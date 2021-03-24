defmodule ExliveryTest.Users.CreateOrUpdateTest do
  use ExUnit.Case

  alias Exlivery.Users.Agent, as: UserAgent
  alias Exlivery.Users.CreateOrUpdate

  describe "call/1" do
    setup do
      UserAgent.start_link({})

      :ok
    end

    test "when all params are valid, saves the user" do
      params = %{
        name: "Eduardo",
        adress: "Rua do teste, 35",
        email: "teste@teste.com",
        cpf: "12345678900",
        age: 29
      }

      response = CreateOrUpdate.call(params)

      expected_response = {:ok, "User created or updated successfully!"}

      assert expected_response == response
    end

    test "when there are invalid params, returns an error" do
      params = %{
        name: "Eduardo",
        adress: "Rua do teste, 35",
        email: "teste@teste.com",
        cpf: "12345678900",
        age: 15
      }

      response = CreateOrUpdate.call(params)

      expected_response = {:error, "Invalid parameters"}

      assert expected_response == response
    end
  end
end
