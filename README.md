# LiskApiElixirClient

Lisk Blockchain API Client

## Installation

The package can be installed
by adding `lisk_api_elixir_client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:lisk_api_elixir_client, "~> 0.1.0"}
  ]
end
```

## Usage

```elixir
iex> LiskApiElixirClient.Node.status()
%{
  "data" => %{
    "broadhash" => "4df8be28486164157e7673a344629791912ad9e8fec3ba7446e897748aeaa742",
    "consensus" => 93,
    "currentTime" => 1555078242426,
    "height" => 8852541,
    "loaded" => true,
    "networkHeight" => 8852541,
    "secondsSinceEpoch" => 90969042,
    "syncing" => false,
    "transactions" => %{
      "confirmed" => 2460045,
      "total" => 2460045,
      "unconfirmed" => 0,
      "unprocessed" => 0,
      "unsigned" => 0
    }
  },
  "links" => %{},
  "meta" => %{}
}
```

The docs can be found at [https://hexdocs.pm/lisk_api_elixir_client](https://hexdocs.pm/lisk_api_elixir_client).
