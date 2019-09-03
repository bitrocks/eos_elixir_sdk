use Mix.Config

config :eos_elixir_sdk, :rpc,
  conn: %{
    endpoint: "https://public.eosinfra.io"
  },
  timeout: 5_000
