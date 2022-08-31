# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Rockelivery.Repo.insert!(%Rockelivery.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Rockelivery.{Item, Order, Repo, User}

user = %User{
  age: 27,
  address: "Rua Alada",
  cep: "12345678",
  cpf: "98765432102",
  email: "email@mail.com",
  password: "123345667"
}

%User{id: user_id} = Repo.insert!(user)

item_1 = %Item{
  category: :food,
  description: "Torta",
  price: Decimal.new("15.50"),
  photo: "priv/photos/torta"
}

item_2 = %Item{
  category: :food,
  description: "Sorvete",
  price: Decimal.new("10.50"),
  photo: "priv/photos/sorvete"
}

Repo.insert!(item_1)
Repo.insert!(item_2)

order = %Order{
  user_id: user_id,
  items: [item_1, item_2, item_2],
  address: "Rua da Ordem, 2",
  comments: "Sorvete gelado.",
  payment_method: :money
}

Repo.insert!(order)
