defmodule PolymorphismTest.AlbumTest do
  use PolymorphismTest.ModelCase

  alias PolymorphismTest.Album

  @valid_attrs %{added_on: "2010-04-17", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Album.changeset(%Album{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Album.changeset(%Album{}, @invalid_attrs)
    refute changeset.valid?
  end
end
