defmodule LiskApiElixirClient.Delegates do
  @moduledoc """
  Functions for retrieving information from Delegates.
  """

  @doc """
  Get delegates.
  **Method**: GET
  LiskApiElixirClient.Delegates.get(%{sort: "rank:asc"})
  # => { data, meta, links }
  """
  def get(args) do
    LiskApiElixirClient.handle_get_request('/delegates', args)
  end

  @doc """
  Get standby delegates.
  **Method**: GET
  LiskApiElixirClient.Delegates.get_standby(%{offset: 101,sort: "rank:asc"})
  # => { data, meta, links }
  """
  def get_standby(args) do
    LiskApiElixirClient.handle_get_request('/delegates', args)
  end

  @doc """
  Get forgers list.
  **Method**: GET
  LiskApiElixirClient.Delegates.get_forgers()
  # => { data, meta, links }
  """
  def get_forgers() do
    LiskApiElixirClient.handle_get_request('/delegates/forgers', %{})
  end

  @doc """
  Get forger statistics.
  **Method**: GET
  LiskApiElixirClient.Delegates.get_forging_statistics(%{address: "2433857930558702776L"})
  # => { data, meta, links }
  """
  def get_forging_statistics(args) do
    LiskApiElixirClient.handle_get_request("/delegates/#{args.address}/forging_statistics", args)
  end
end
