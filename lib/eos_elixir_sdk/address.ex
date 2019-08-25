defmodule EosElixirSdk.Address do
  alias EosElixirSdk.Crypto
  alias EosElixirSdk.Rpc

  def address_valid?(address) do
    with {:ok, %{"account_name" => _account_name}} <- Rpc.get_account(address) do
      true
    else
      _error -> false
    end
  end

  defp account_name_valid?(name), do: String.match?(name, ~r/\A[.a-z1-5]{1,12}\z/)
end
