defmodule Exlivery.Users.Agent do
  use Agent

  alias Exlivery.Users.User

  def start_link(_initial_state) do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end
end
