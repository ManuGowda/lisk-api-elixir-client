defmodule LiskApiElixirClient.DApps do
  @moduledoc """
  Functions for retrieving information from DApps.
  """

  @doc """
  Get Lisk dapps.
  **Method**: GET
  LiskApiElixirClient.DApps.get(%{address?: string, publicKey?: publicKey})
  # => { data, meta, links }
  """
  def get(args) do
    LiskApiElixirClient.handle_get_request('/dapps', args)
  end
end
