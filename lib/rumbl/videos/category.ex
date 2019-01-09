defmodule Rumbl.Videos.Category do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, only: [from: 2]

  schema "categories" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:name])
    |> validate_required([:name])
    
    # We can add the constraint in this way
    # foreign_key_constraint(changeset, :videos,
    # name: :videos_category_id_fkey, message: "still exist")
  end

  def alphabetical(query) do
    from c in query, order_by: c.name
  end
  def names_and_ids(query) do
    from c in query, select: {c.name, c.id}
  end

end
