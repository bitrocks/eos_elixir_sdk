defmodule EosElixirSdk.Transaction.Asset do
  def extract_quantity(quantity) when is_binary(quantity) do
    [amount, symbol] = String.split(quantity, " ")
    decimals = String.split(amount, ".") |> List.last() |> String.length()
    {Decimal.new(amount), decimals, symbol}
  end
end
