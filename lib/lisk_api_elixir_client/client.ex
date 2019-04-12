defmodule LiskApiElixirClient.Client do
  @moduledoc """
  Functions for API client get, post and put request.
  The successful responses for each API request have a common basic structure:
      "data": {}, //Contains the requested data
      "meta": {}, //Contains additional metadata, e.g. the values of `limit` and `offset`
      "links": {} //Will contain links to connected API calls from here, e.g. pagination links
  """

  @doc """
  Get.
  **Method**: GET
  **Params**: `route`, `args`
  LiskApiElixirClient.Client.get('/blocks', %{})
  # => { data, meta, links }
  """
  def get(route, args) do
    url = LiskApiElixirClient.build_url(route)
    HTTPoison.get(url, [], params: args)
  end

  @doc """
  Post.
  **Method**: Post
  **Params**: `route`, `args`
  LiskApiElixirClient.Client.post('/signatures', %{})
  # => { data, meta, links }
  """
  def post(route, args) do
    url = LiskApiElixirClient.build_url(route)
    headers = [{"Content-type", "application/json"}]
    args = Poison.encode!(args)
    HTTPoison.post(url, args, headers, [])
  end

  @doc """
  Put.
  **Method**: Put
  **Params**: `route`, `args`
  LiskApiElixirClient.Client.put('/node/status/forging', %{})
  # => { data, meta, links }
  """
  def put(route, args) do
    url = LiskApiElixirClient.build_url(route)
    headers = [{"Content-type", "application/json"}]
    args = Poison.encode!(args)
    HTTPoison.put(url, args, headers, [])
  end
end
