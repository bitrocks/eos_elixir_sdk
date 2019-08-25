# EosElixirSdk


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `eos_elixir_sdk` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:eos_elixir_sdk, "~> 0.1.4"}
  ]
end
```
## Feature
1. RPC
    1. get_info/0
    2. get_account/1
    3. get_block/1
    4. get_transaction/1
    5. ...

2. Crypto
    1. generate keypair
    2. address validity check

3. Serialize/Deserialize
    tbd

4. Sign Transaction
    tbd

## Config

    ```
    config :eos_elixir_sdk, :rpc,
      conn: %{
        endpoint: "https://public.eosinfra.io"
      },
      timeout: 5_000
    ```

