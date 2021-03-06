defmodule Fyp.Scraping.ShelterAbandonedAngel do
  require Logger

  def get_pets_html_body(page_url, base_url) do
    full_url = base_url <> page_url
    Logger.warn("Getting data from #{full_url}")

    with {:ok, %HTTPoison.Response{status_code: 200, body: body}} <- HTTPoison.get(full_url),
         {:ok, html_tree} <- Floki.parse_document(body) do
      pets_html_tree =
        html_tree
        |> Floki.find("div[class='ms2_product box']")
        |> Enum.map(fn pet -> %{source: full_url, body: pet} end)

      have_next =
        html_tree
        |> Floki.find("ul.pagination")
        |> Floki.find("li[class='page-item active']+li:not(li[class='page-item disabled'])")
        |> Floki.find("a")
        |> Floki.attribute("href")

      case have_next do
        [] -> pets_html_tree
        [next_page] -> pets_html_tree ++ get_pets_html_body(next_page, base_url)
      end
    else
      {:error, %HTTPoison.Response{status_code: 404}} ->
        Logger.error("HTTPoison. Page is not found. Url: #{full_url}")
        []

      {:error, %HTTPoison.Error{reason: reason}} ->
        Logger.error("HTTPoison. Page error. Url: #{full_url}. Reason: #{inspect(reason)}")
        []

      {:error, reason} ->
        Logger.error("Error. Url: #{full_url}. Reason: #{inspect(reason)}")
        []
    end
  end

  def get_pet_name(%{body: body} = _pet) do
    body
    |> Floki.find("form.ms2_form")
    |> Floki.find("h3")
    |> Floki.text()
  end

  def get_pet_photos(%{body: body} = _pet, base_url) do
    body
    |> Floki.find("div#msGallery")
    |> Floki.find("a")
    |> Floki.attribute("href")
    |> Enum.map(fn photo_url -> base_url <> photo_url end)
  end

  def get_pet_description(%{body: body} = _pet) do
    body
    |> Floki.find("div[class='ms2_product box']>p")
    |> Floki.text(sep: "\n")
    |> String.trim_leading()
    |> String.trim_trailing()
    |> String.replace("\u00A0", "")
  end

  def get_pet_link(%{source: link} = _pet) do
    link
  end
end

defimpl Fyp.Scraping.Shelters, for: ShelterAbandonedAngel do
  import Fyp.Scraping.ShelterAbandonedAngel
  require Logger

  def get_pets(%ShelterAbandonedAngel{link: base_url}) do
    categories = [
      {"/sobaki/", 2},
      {"/koshki/kotyata/", 1},
      {"/koshki/vzroslyie/", 1},
      {"/koshki/starichki/", 1}
    ]
    {:ok, shelter_id} = Fyp.Shelter.get_shelter_by_title("Благотворительный фонд \"Брошенный ангел\"")

    _pets =
      Enum.each(categories, fn {category_url, type_id} ->
        get_pets_html_body(category_url, base_url)
        |> Enum.map(fn body ->
          %{
            name: get_pet_name(body),
            breed: nil,
            gender: nil,
            birth: nil,
            height: nil,
            description: get_pet_description(body),
            photos: get_pet_photos(body, base_url),
            source_link: get_pet_link(body),
            shelter_id: shelter_id,
            type_id: type_id
          }
        end)
        |> Enum.each(fn pet -> Fyp.Pets.create(pet) end)
      end)
  end
end
