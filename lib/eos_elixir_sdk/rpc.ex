defmodule EosElixirSdk.Rpc do 

  use Tesla

  def get_info do 
    call(:get_info, %{})
  end
  def get_account(account_name) do 
    body = %{"account_name" => account_name}
    call(:get_account, body)
  end

  def get_block(block_num) do 
    body = %{"block_num_or_id" =>  block_num}
    call(:get_block, body)
  end

  def get_transaction(txid, block_num_hint \\ nil) do 
    body = %{"id" => txid, "block_num_hint" => block_num_hint}
    call(:get_transaction, body)
  end

  def get_table_rows(code, scope, table, limit) do 
    body = %{"code" => code, "scope" => scope, "table" => table, "json" => true, "limit" => limit}
    call(:get_table_rows, body)
  end

  # todo http request, response handle

  defp call(method, body) do
    headers = [{"accpet", "application/json"}, {"content-type", "application/json"}]
    
    with %{endpoint: endpoint} <- :eos_elixir_sdk |> Application.get_env(:rpc) |> Keyword.get(:conn),
         url = endpoint <> "/v1/chain/#{method}",
         {:ok, %{body: body}} <- post(url, Jason.encode!(body), headers) ,
         {:ok, %{} = body} <- Jason.decode(body) do 
      {:ok, body}
    else
      error -> handle_error(error)
    end
  end

  defp handle_error({:error, %Jason.DecodeError{}}), do: {:error, :json_decode_error}
end
