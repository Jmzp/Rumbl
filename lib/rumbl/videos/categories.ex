defmodule Rumbl.Videos.Categories do
  @moduledoc false

  import Ecto.Query, warn: false
  alias Rumbl.Repo

  alias Rumbl.Videos.Category

  def load_categories() do
    query =
      Category
      |> Category.alphabetical
      |> Category.names_and_ids
    Repo.all query
  end

end
