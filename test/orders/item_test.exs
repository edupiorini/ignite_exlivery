defmodule ExliveryTest.ItemTest do
  use ExUnit.Case

  alias Exlivery.Orders.Item

  import Exlivery.Factory

  describe "build/4" do
    test "when our params are valid, returns an item" do
      response =
        Item.build(
          "Pizza de Frango",
          :pizza,
          "35.00",
          1
        )

      expected_response = {:ok, build(:item)}

      assert expected_response == response
    end

    test "when category is invalid, returns an error" do
      response =
        Item.build(
          "Pizza de Frango",
          :teste_erro,
          "35.00",
          1
        )

      expected_response = {:error, "Invalid parameters"}

      assert expected_response == response
    end

    test "when price is invalid, returns an error" do
      response =
        Item.build(
          "Pizza de Frango",
          :pizza,
          "teste_erro",
          1
        )

      expected_response = {:error, "Invalid price"}

      assert expected_response == response
    end

    test "when quantity is invalid, returns an error" do
      response =
        Item.build(
          "Pizza de Frango",
          :pizza,
          "35.00",
          0
        )

      expected_response = {:error, "Invalid parameters"}

      assert expected_response == response
    end
  end
end
