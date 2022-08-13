defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      "address" => "Rua das Flores",
      "age" => "33",
      "cep" => "12345678",
      "cpf" => "12334556778",
      "email" => "alfa@romeo.com",
      "password" => "123456",
      "name" => "Joliverson"
    }
  end

  def user_params_arrow_factory do
    %{
      "address" => "Rua das Flores",
      "age" => 33,
      "cep" => "12345678",
      "cpf" => "12334556778",
      "email" => "alfa@romeo.com",
      "password" => "123456",
      "name" => "Joliverson"
    }
  end

  def user_factory do
    %User{
      address: "Rua das Flores",
      age: "33",
      cep: "12345678",
      cpf: "12334556778",
      email: "alfa@romeo.com",
      password: "123456",
      name: "Joliverson",
      id: "68e20911-e7ce-49d0-9ccd-572fba63afe0"
    }
  end

  def cep_info_factory do
    %{
      "bairro" => "Sé",
      "cep" => "01001-000",
      "complemento" => "lado ímpar",
      "ddd" => "11",
      "gia" => "1004",
      "ibge" => "3550308",
      "localidade" => "São Paulo",
      "logradouro" => "Praça da Sé",
      "siafi" => "7107",
      "uf" => "SP"
    }
  end
end
