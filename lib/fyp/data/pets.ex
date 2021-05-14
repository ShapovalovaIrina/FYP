defmodule Fyp.Pets do
  @moduledoc """
  Operations with pets data (including photos) from database.
  """

  import Ecto.Query
  alias Schemas.{Pets, Shelter}
  alias Fyp.{Repo, Photos}
  require Logger

  def create(pet_with_photos) do
    opts = [
      returning: [:id],
      on_conflict: {:replace_all_except, [:id]},
      conflict_target: {:unsafe_fragment, "(name, shelter_id, pet_type_id)"}
    ]

    {photos, pet_params} =
      case Map.has_key?(pet_with_photos, "photos") do
        true ->
          Map.split(pet_with_photos, ["photos"])

        false ->
          {photo, pets} = Map.split(pet_with_photos, [:photos])
          photo = Map.new(photo, fn {k, v} -> {Atom.to_string(k), v} end)
          {photo, pets}
      end

    changeset = Pets.changeset(%Pets{}, pet_params)

    case Repo.insert(changeset, opts) do
      {:ok, %Pets{id: uuid}} ->
        Logger.info("Insert pet with uuid: #{uuid}.")
        res = Photos.create_all(photos, uuid)
        {res, uuid}

      {:error, reason} ->
        Logger.warn("Pet insertion failed. Reason: #{inspect(reason)}")
        :error
    end
  end

  def pet_list() do
    query =
      from pet in Pets,
        preload: [:photos, :shelter]

    Repo.all(query)
    |> Enum.map(fn pet ->
      Map.update(pet, :photos, [], fn photos -> Photos.struct_list_to_map_list(photos) end)
    end)
  end

  def pet_by_id(id) do
    case Repo.get(Pets, id) |> Repo.preload([:photos, :shelter]) do
      nil ->
        {:error, :not_found}

      struct ->
        struct =
          Map.update(struct, :photos, [], fn photos ->
            Photos.struct_list_to_map_list(photos)
          end)

        {:ok, struct}
    end
  end

  defp pet_by_id_without_preload(id) do
    case Repo.get(Pets, id) do
      nil -> {:error, :not_found}
      struct -> {:ok, struct}
    end
  end

  def delete_pet(id) do
    with {:ok, pet} <- pet_by_id_without_preload(id),
         {:ok, _} <- Repo.delete(pet) do
      :ok
    else
      {:error, :not_found} ->
        :not_found

      {:error, changeset} ->
        Logger.error(
          "Error in pet deletion. Pet id: #{id}. Changeset: #{inspect(changeset)}"
        )
        :error
    end
  end

  def map_from_pet_struct(struct) do
    with map <-
           Map.take(struct, [
             :id,
             :name,
             :breed,
             :gender,
             :birth,
             :height,
             :description,
             :photos,
             :shelter
           ]),
         {_, ready_map} <-
           Map.get_and_update(map, :shelter, fn current_value ->
             {current_value, struct_shelter_to_map_shelter(current_value)}
           end) do
      ready_map
    else
      error ->
        Logger.warn("Error in getting map from pet struct. Error: #{inspect(error)}")
        %{}
    end
  end

  defp struct_shelter_to_map_shelter(%Shelter{} = shelter_struct) do
    Map.take(shelter_struct, [
      :title,
      :vk_link,
      :site_link
    ])
  end

  defp struct_shelter_to_map_shelter(_incorrect_input) do
    %{}
  end
end
