defmodule Exlivery.Factory do
  use ExMachina

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
end
