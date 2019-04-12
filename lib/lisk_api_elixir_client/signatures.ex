defmodule LiskApiElixirClient.Signatures do
  @moduledoc """
  Functions for handling multisignatures.
  """

  @doc """
  Send signatures for multi-signature transaction.

  ## Examples
      iex> LiskApiElixirClient.Peers.broadcast(%{
          publicKey: "142d1f24e17d3c90b0f2abdf49c2b14b02782e49b2ecfe85462ed12f654d60df",
          signature: "dc8fe25f817c81572585b3769f3c6df13d3dc93ff470b2abe807f43a3359ed94e9406d2539013971431f2d540e42dc7d3d71c7442da28572c827d59adc5dfa08,
          transactionId: "15181013796707110990"
        "})
      %{
        "data" => [],
        "links" => %{},
        "meta" => %{"count" => 0, "limit" => 10, "offset" => 0}
      }
  """
  @spec broadcast(Map.t()) :: Map.t()
  def broadcast(args) do
    LiskApiElixirClient.handle_post_request('/signatures', args)
  end
end
