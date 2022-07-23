defmodule Rockelivery.Users.Create do
  alias Rockelivery.Users.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
