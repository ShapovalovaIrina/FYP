defmodule Schemas.Shelter do
  use Ecto.Schema
  import Ecto.Changeset

  @moduledoc """
  Schema for shelter table.
  Fields:
    - id (id)
    - title (string)
    - vk_link (string)
    - site_link (string)

  Has many pets (One to Many relationship with pets).
  """

  @derive {Jason.Encoder, only: [:id, :title, :vk_link, :site_link]}
  @primary_key {:id, :id, autogenerate: true}
  schema "shelter" do
    field :title, :string
    field :vk_link, :string
    field :site_link, :string
    has_many :pets, Schemas.Pets
  end

  def changeset(pet, attrs) do
    pet
    |> cast(attrs, [:id, :title, :vk_link, :site_link])
    |> validate_required([:title])
  end
end
