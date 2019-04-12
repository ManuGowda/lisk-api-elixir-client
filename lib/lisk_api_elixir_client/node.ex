defmodule LiskApiElixirClient.Node do
  @moduledoc """
  Functions for retrieving information about Node.
  """

  @doc """
  Get node status.
  **Method**: GET
  LiskApiElixirClient.Node.status()
  # => { data, meta, links }
  """
  def status() do
    LiskApiElixirClient.handle_get_request('/node/status', %{})
  end

  @doc """
  Get node constants.
  **Method**: GET
  LiskApiElixirClient.Node.constants()
  # => { data, meta, links }
  """
  def constants() do
    LiskApiElixirClient.handle_get_request('/node/constants', %{})
  end

  @doc """
  Get forging status.
  **Method**: GET
  LiskApiElixirClient.Node.get_forging_status()
  # => { data, meta, links }
  """
  def get_forging_status() do
    LiskApiElixirClient.handle_get_request('/node/status/forging', %{})
  end

  @doc """
  Update node forging.
  **Method**: GET
  LiskApiElixirClient.Node.update_forging_status(%{forging: true, password: "mypass", publicKey: "fd061b9146691f3c56504be051175d5b76d1b1d0179c5c4370e18534c5882122"})
  # => { data, meta, links }
  """
  def update_forging_status(args) do
    LiskApiElixirClient.handle_put_request('/node/status/forging', args)
  end

  @doc """
  Get node pending transactions by state.
  **Method**: GET
  LiskApiElixirClient.Node.get_transactions(%{state: "unprocessed"})
  # => { data, meta, links }
  """
  def get_transactions(args) do
    LiskApiElixirClient.handle_get_request("/node/transactions/#{args.state}", %{})
  end
end
