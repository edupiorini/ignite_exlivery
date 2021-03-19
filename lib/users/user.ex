defmodule Exlivery.Users.User do
  @keys [:name, :email, :cpf, :age, :adress]
  @enforce_keys @keys

  defstruct @keys

  def build(name, email, cpf, age, adress) when age >= 18 and is_bitstring(cpf) do
    {:ok,
     %__MODULE__{
       adress: adress,
       name: name,
       email: email,
       cpf: cpf,
       age: age
     }}
  end

  def build(_name, _email, _cpf, _age), do: {:error, "Invalid parameters"}
end
