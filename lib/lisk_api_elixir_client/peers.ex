defmodule LiskApiElixirClient.Peers do
  @moduledoc """
  Functions for retrieving information about Peers.
  """

  @doc """
  Get list of peers.
  **Method**: GET
  LiskApiElixirClient.Peers.get(%{version: "1.0.0"})
  # => { data, meta, links }
  """
  def get(args) do
    LiskApiElixirClient.handle_get_request('/peers', args)
  end
end
