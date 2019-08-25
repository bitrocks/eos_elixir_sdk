defmodule EosElixirSdk.MixProject do
  use Mix.Project

  def project do
    [
      app: :eos_elixir_sdk,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # http
      {:tesla, "~> 1.2"},
      {:jason, "~> 1.1"},

      # crypto
      {:libsecp256k1, [github: "peatio/libsecp256k1", manager: :rebar, optional: true]},
      {:decimal, "~> 1.0"}
    ]
  end
end
