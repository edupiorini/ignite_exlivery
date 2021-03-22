defmodule Exlivery.Users.User do
  @keys [:adress, :name, :email, :cpf, :age]
  @enforce_keys @keys

  defstruct @keys

  def build(adress, name, email, cpf, age) when age >= 18 and is_bitstring(cpf) do
    {:ok,
     %__MODULE__{
       adress: adress,
       name: name,
       email: email,
       cpf: cpf,
       age: age
     }}
  end

  def build(_address, _name, _email, _cpf, _age), do: {:error, "Invalid parameters"}
end
