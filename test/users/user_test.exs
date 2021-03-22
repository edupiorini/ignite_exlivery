defmodule ExliveryTest.UserTest do
  use ExUnit.Case

  alias Exlivery.Users.User

  describe "build/5" do
    test "when our params are valid, returns the user" do
      response =
        User.build(
          "Rua de teste",
          "Eduardo",
          "teste@teste.com",
          "123456789",
          29
        )

      expected_response =
        {:ok,
         %Exlivery.Users.User{
           adress: "Rua de teste",
           age: 29,
           cpf: "123456789",
           email: "teste@teste.com",
           name: "Eduardo"
         }}

      assert expected_response == response
    end

    test "when there are invalid params, returns an error " do
      response =
        User.build(
          "Rua de teste",
          "Eduardo",
          "teste@teste.com",
          "123456789",
          15
        )

      expected_response = {:error, "Invalid parameters"}

      assert expected_response == response
    end
  end
end
