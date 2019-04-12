defmodule LiskApiElixirClient.Signatures do
  @moduledoc """
  Functions for handling multisignatures.
  """

  @doc """
  Send signatures for multi-signature transaction.
  **Method**: POST
  LiskApiElixirClient.Peers.broadcast(%{version: "1.0.0"})
  # => { data, meta, links }
  """
  def broadcast(args) do
    LiskApiElixirClient.handle_post_request('/signatures', args)
  end
end
