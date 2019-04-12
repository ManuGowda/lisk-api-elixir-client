defmodule LiskApiElixirClient.Transactions do
  @moduledoc """
  Functions for handling transactions.
  """

  @doc """
  Get transactions.
  **Method**: GET
  LiskApiElixirClient.Transactions.get(%{id: "9016695144199392750"})
  # => { data, meta, links }
  """
  def get(args) do
    LiskApiElixirClient.handle_get_request('/transactions', args)
  end

  @doc """
  Broadcast transactions.
  **Method**: POST
  LiskApiElixirClient.Transactions.broadcast(%{
    "type": 0,
    "amount": "10000000000000000",
    "fee": "0",
    "timestamp": 0,
    "recipientId": "16313739661670634666L",
    "senderId": "1085993630748340485L",
    "senderPublicKey":
      "c96dec3595ff6041c3bd28b76b8cf75dce8225173d1bd00241624ee89b50f2a8",
    "signature":
      "d8103d0ea2004c3dea8076a6a22c6db8bae95bc0db819240c77fc5335f32920e91b9f41f58b01fc86dfda11019c9fd1c6c3dcbab0a4e478e3c9186ff6090dc05",
    "id": "1465651642158264047"
  })
  # => { data, meta, links }
  """
  def broadcast(args) do
    LiskApiElixirClient.handle_post_request('/transactions', args)
  end
end
