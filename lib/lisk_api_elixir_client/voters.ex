defmodule LiskApiElixirClient.Voters do
  @moduledoc """
  Functions for handling voters.
  """

  @doc """
  Get list of voters for delegate.
  **Method**: GET
  LiskApiElixirClient.Voters.get(%{username: "4miners.net"})
  # => { data, meta, links }
  """
  def get(args) do
    LiskApiElixirClient.handle_get_request('/voters', args)
  end
end
