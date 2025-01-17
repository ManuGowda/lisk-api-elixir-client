defmodule LiskApiElixirClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :lisk_api_elixir_client,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      # Docs
      name: "LiskApiElixirClient",
      source_url: "https://github.com/ManuGowda/lisk-api-elixir-client",
      homepage_url: "https://github.com/ManuGowda/lisk-api-elixir-client",
      docs: [
        main: "LiskApiElixirClient",
        extras: ["README.md"]
      ]
    ]
  end

  defp description do
    """
    Elixir API client for Lisk Blockchain
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Manu Nelamane Siddalingegowda"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/ManuGowda/lisk-api-elixir-client",
        "Docs" => "http://hexdocs.pm/lisk-api-elixir-client/"
      }
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
      {:ex_doc, "~> 0.19.2", only: :dev},
      {:earmark, "~> 1.2", only: :dev},
      {:httpoison, "~> 1.0"},
      {:poison, "~> 4.0"}
    ]
  end
end
