defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Orders.Item
  alias Exlivery.Users.User

  def user_factory do
    %User{
      name: "Eduardo",
      email: "teste@teste.com",
      cpf: "123456789",
      age: 29,
      adress: "Rua do teste, 35"
    }
  end

  def item_factory do
    %Item{
      description: "Pizza de Frango",
      category: :pizza,
      unit_price: Decimal.new("35.00"),
      quantity: 1
    }
  end
end
