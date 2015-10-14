defmodule PolymorphismTest.Album do
  use PolymorphismTest.Web, :model
  alias PolymorphismTest.Favorite
  
  schema "albums" do
    field :name, :string
    field :added_on, Ecto.Date

    belongs_to :user, PolymorphismTest.User
    has_many :songs, PolymorphismTest.Song
    has_many :favorites, {"album_favorites", Favorite}
    timestamps
  end

  @required_fields ~w(name added_on)
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
