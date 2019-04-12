defmodule LiskApiElixirClient.Votes do
  @moduledoc """
  Functions for handling votes.
  """

  @doc """
  Get list of votes for delegate.

  ## Examples
      iex> LiskApiElixirClient.Votes.get(%{username: "4miners.net"})
      %{
        "data" => %{
          "address" => "16010222169256538112L",
          "balance" => "21459488388319",
          "publicKey" => "6a01c4b86f4519ec9fa5c3288ae20e2e7a58822ebe891fb81e839588b95b242a",
          "username" => "4miners.net",
          "votes" => [
            %{
              "address" => "16010222169256538112L",
              "balance" => "21459488388319",
              "publicKey" => "6a01c4b86f4519ec9fa5c3288ae20e2e7a58822ebe891fb81e839588b95b242a",
              "username" => "4miners.net"
            }
          ],
          "votesAvailable" => 1,
          "votesUsed" => 100
        },
        "links" => %{},
        "meta" => %{"limit" => 1, "offset" => 0}
      }
  """
  @spec get(Map.t()) :: Map.t()
  def get(args) do
    LiskApiElixirClient.handle_get_request('/votes', args)
  end
end
