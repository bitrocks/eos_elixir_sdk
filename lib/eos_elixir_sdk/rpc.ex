defmodule EosElixirSdk.Rpc do 

  use Tesla

  def get_account(account_name) do 
    body = %{"account_name", account_name}
  end

  def get_block(block_num) do 
    body = %{"block_num_or_id", block_num_or_id}
  end

  def get_transaction(txid, block_num_hint \\ nil) do 
    body = %{"id" => txid, "block_num_hint" => block_num_hint}
  end

  def get_table_rows(code, scope, table, limit) do 
    body = %{"code" => code, "scope" => scope, "table" => table, "json" => true, "limit" => limit}
  end

  # todo http request, response handle
end
