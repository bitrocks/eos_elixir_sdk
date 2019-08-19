use Mix.Config

config :eos_elixir_sdk, :rpc,
  conn: %{
    hostname: "https://public.eosinfra.io",
    port: nil
  },
  timeout: 5_000
