defmodule LiskApiElixirClient.Votes do
  @moduledoc """
  Functions for handling votes.
  """

  @doc """
  Get list of votes for delegate.
  **Method**: GET
  LiskApiElixirClient.Votes.get(%{username: "4miners.net"})
  # => { data, meta, links }
  """
  def get(args) do
    LiskApiElixirClient.handle_get_request('/votes', args)
  end
end
