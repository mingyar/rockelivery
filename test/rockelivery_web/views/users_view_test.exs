defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)

    response = render(UsersView, "create.json", user: user)

    assert %{
             message: "User created!",
             user: %Rockelivery.User{
               address: "Rua das Flores",
               age: "33",
               cep: "12345678",
               cpf: "12334556778",
               email: "alfa@romeo.com",
               id: "68e20911-e7ce-49d0-9ccd-572fba63afe0",
               inserted_at: nil,
               name: "Joliverson",
               password: "123456",
               password_hash: nil,
               updated_at: nil
             }
           } = response
  end
end
