defmodule PolymorphismTest.Song do
  use PolymorphismTest.Web, :model

  schema "songs" do
    field :name, :string
    belongs_to :album, PolymorphismTest.Album

    timestamps
  end

  @required_fields ~w(name)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
