defmodule PolymorphismTest.Repo.Migrations.CreateSong do
  use Ecto.Migration

  def change do
    create table(:songs) do
      add :name, :string
      add :album_id, references(:albums)

      timestamps
    end
    create index(:songs, [:album_id])

  end
end
