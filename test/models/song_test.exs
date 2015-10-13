defmodule PolymorphismTest.SongTest do
  use PolymorphismTest.ModelCase

  alias PolymorphismTest.Song

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Song.changeset(%Song{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Song.changeset(%Song{}, @invalid_attrs)
    refute changeset.valid?
  end
end
