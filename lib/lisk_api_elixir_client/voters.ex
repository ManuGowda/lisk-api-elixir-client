defmodule LiskApiElixirClient.Voters do
  @moduledoc """
  Functions for handling voters.
  """

  @doc """
  Get list of voters for delegate.

  ## Examples
      iex> LiskApiElixirClient.Voters.get(%{username: "4miners.net"})
      %{
        "data" => %{
          "address" => "16010222169256538112L",
          "balance" => "21459488388319",
          "publicKey" => "6a01c4b86f4519ec9fa5c3288ae20e2e7a58822ebe891fb81e839588b95b242a",
          "username" => "4miners.net",
          "voters" => [
            %{
              "address" => "1661762863585433802L",
              "balance" => "9826607451",
              "publicKey" => "00008acc04eaae130009882fae1bfc8b2a2392d9157c660cf441c97e43c77eec"
            }
          ],
          "votes" => 8573
        },
        "links" => %{},
        "meta" => %{"limit" => 1, "offset" => 0}
      }
  """
  @spec get(Map.t()) :: Map.t()
  def get(args) do
    LiskApiElixirClient.handle_get_request('/voters', args)
  end
end
