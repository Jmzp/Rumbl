defmodule Rumbl.Users do
    @moduledoc """
    The Users context.
    """
    import Ecto.Query, warn: false
    alias Rumbl.Repo

    alias Rumbl.Users.User

    def list_users do
      Repo.all(User)
    end

    def get_user(id), do: Repo.get!(User, id)

    def create_user(attrs \\ %{}) do
      %User{}
      |> User.registration_changeset(attrs)
      |> Repo.insert()
    end
end
