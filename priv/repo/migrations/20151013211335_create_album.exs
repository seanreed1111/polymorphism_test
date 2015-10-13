defmodule PolymorphismTest.Repo.Migrations.CreateAlbum do
  use Ecto.Migration

  def change do
    create table(:albums) do
      add :name, :string
      add :added_on, :date
      add :user_id, references(:users)

      timestamps
    end
    create index(:albums, [:user_id])

  end
end
