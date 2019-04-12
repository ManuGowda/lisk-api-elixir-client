defmodule LiskApiElixirClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :lisk_api_elixir_client,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {LiskApiElixirClient.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.11", only: :dev},
      {:earmark, "~> 0.1", only: :dev},
      {:httpoison, "~> 1.0"},
      {:poison, "~> 4.0"}
    ]
  end
end
