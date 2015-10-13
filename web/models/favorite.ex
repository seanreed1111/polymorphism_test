defmodule PolymorphismTest.Favorite do
  use Ecto.Model
  schema "abstract table: favorites" do
    # This will be used by associations on each "concrete" table
    field :assoc_id, :integer
  end
end
