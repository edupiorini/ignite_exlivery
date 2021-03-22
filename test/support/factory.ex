defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Orders.{Item, Order}
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

  def order_factory do
    %Order{
      delivery_address: "Rua do teste, 35",
      items: [
        build(:item),
        build(:item,
          description: "Temaki de atum",
          category: :japonesa,
          quantity: 2,
          unit_price: Decimal.new("20.50")
        )
      ],
      total_price: Decimal.new("76.00"),
      user_cpf: "123456789"
    }
  end
end
