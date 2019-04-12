defmodule LiskApiElixirClient.Blocks do
  @moduledoc """
  Functions for retrieving information from Blocks.
  """

  @doc """
  Get blocks.
  **Method**: GET
  LiskApiElixirClient.Blocks.get(%{address?: string, publicKey?: publicKey})
  # => { data, meta, links }
  """
  def get(args) do
    LiskApiElixirClient.handle_get_request('/blocks', args)
  end
end
