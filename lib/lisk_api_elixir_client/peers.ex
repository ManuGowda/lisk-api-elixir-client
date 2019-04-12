defmodule LiskApiElixirClient.Peers do
  @moduledoc """
  Functions for retrieving information about Peers.
  """

  @doc """
  Get list of peers.

  ## Examples
      iex> LiskApiElixirClient.Peers.get(%{version: "1.0.0", limit: 1})
      %{
        "data" => [
          %{
            "broadhash" => "317e01460bb3cd40becc07bed412459f5de46eabd9535e6b6246666e1fe63894",
            "height" => 7332024,
            "ip" => "27.11.35.151",
            "os" => "linux4.4.0-137-generic",
            "state" => 1,
            "version" => "1.0.0",
            "wsPort" => 8001
          }
        ],
        "links" => %{},
        "meta" => %{"count" => 6, "limit" => 1, "offset" => 0}
      }
  """
  @spec get(Map.t()) :: Map.t()
  def get(args) do
    LiskApiElixirClient.handle_get_request('/peers', args)
  end
end
