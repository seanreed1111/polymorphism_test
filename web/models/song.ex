defmodule PolymorphismTest.Song do
  use PolymorphismTest.Web, :model
  alias PolymorphismTest.Favorite

  schema "songs" do
    field :name, :string
    field :track_number, :integer

    belongs_to :album, PolymorphismTest.Album
    has_many :favorites, {"song_favorites", Favorite}
    timestamps
  end

  @required_fields ~w(name track_number)
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
