defmodule LiskApiElixirClient.Transactions do
  @moduledoc """
  Functions for handling transactions.
  """

  @doc """
  Get list of all transactions.

  ## Examples

      iex> LiskApiElixirClient.Transactions.get(%{id: "9016695144199392750"})
      %{
        "data" => [
          %{
            "amount" => "0",
            "asset" => %{
            "delegate" => %{
              "address" => "16655130933670731459L",
              "publicKey" => "baa1a74353d4dc44caeda1a6b1fdb9a2e2089ab25678cf9e8ceea54b574fa745",
              "username" => "genesis_9"
            }
          },
          "blockId" => "13658550407518916215",
          "confirmations" => 8852647,
          "fee" => "0",
          "height" => 1,
          "id" => "9016695144199392750",
          "recipientId" => "",
          "recipientPublicKey" => "",
          "senderId" => "16655130933670731459L",
          "senderPublicKey" => "baa1a74353d4dc44caeda1a6b1fdb9a2e2089ab25678cf9e8ceea54b574fa745",
          "signature" => "97ba0dab8ff4c349d40c042c4fa63b2825e4f1391b2378189b700d4e0c61160e6fd15e4c11b591f84ceee0109a67c217c011e28e7391723409351d3e63290e08",
          "signatures" => [],
          "timestamp" => 0,
          "type" => 2
        }],
        "links" => %{},
        "meta" => %{"count" => 1, "limit" => 10, "offset" => 0}
      }
  """
  @spec get(Map.t()) :: Map.t()
  def get(args) do
    LiskApiElixirClient.handle_get_request('/transactions', args)
  end

  @doc """
  Broadcast transactions to node.

  ## Examples

      iex> LiskApiElixirClient.Transactions.broadcast(%{
            "type": 0,
            "amount": "10000000000000000",
            "fee": "0",
            "timestamp": 0,
            "recipientId": "16313739661670634666L",
            "senderId": "1085993630748340485L",
            "senderPublicKey": "c96dec3595ff6041c3bd28b76b8cf75dce8225173d1bd00241624ee89b50f2a8",
            "signature": "d8103d0ea2004c3dea8076a6a22c6db8bae95bc0db819240c77fc5335f32920e91b9f41f58b01fc86dfda11019c9fd1c6c3dcbab0a4e478e3c9186ff6090dc05",
            "id": "1465651642158264047"
          })
  """
  @spec broadcast(Map.t()) :: Map.t()
  def broadcast(args) do
    LiskApiElixirClient.handle_post_request('/transactions', args)
  end
end
