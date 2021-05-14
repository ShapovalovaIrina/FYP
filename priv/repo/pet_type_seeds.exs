# Script for populating the database. You can run it as:
#
#     mix run priv/repo/pet_type_seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Fyp.Repo.insert!(%Fyp.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

require Logger

pet_type_data = [
  %Schemas.PetType{
    id: 1,
    type: "Котик"
  },
  %Schemas.PetType{
    id: 2,
    type: "Собака"
  }
]

opts = [
  on_conflict: :replace_all,
  conflict_target: :id
]

Enum.each(pet_type_data, fn type ->
  case Fyp.Repo.insert(type, opts) do
    {:ok, _} ->
      Logger.info("Insert pet type info")
      :ok

    {:error, reason} ->
      Logger.warn("Insertion failed. Reason: #{inspect(reason)}")
      :error
  end
end)
