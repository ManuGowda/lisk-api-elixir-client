defmodule LiskApiElixirClient.DApps do
  @moduledoc """
  Functions for retrieving information from DApps.
  """

  @doc """
  Get Lisk dapps.

  ## Examples
      iex> LiskApiElixirClient.DApps.get(%{name: "Blocksafe"})
      %{
        "data" => [
          %{
            "category" => 8,
            "description" => "Smart Gun Network",
            "icon" => "http://www.blocksafefoundation.com/header.jpg",
            "link" => "https://github.com/blocksafe/SDK-notice/archive/master.zip",
            "name" => "Blocksafe",
            "tags" => "Smartgun",
            "transactionId" => "7446168536222815930",
            "type" => 0
          }
        ],
        "links" => %{},
        "meta" => %{"limit" => 10, "offset" => 0}
      }
  """
  @spec get(Map.t()) :: Map.t()
  def get(args) do
    LiskApiElixirClient.handle_get_request('/dapps', args)
  end
end
