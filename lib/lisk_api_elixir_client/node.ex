defmodule LiskApiElixirClient.Node do
  @moduledoc """
  Functions for retrieving information about Node.
  """

  @doc """
  Get node status.

  ## Examples
      iex> LiskApiElixirClient.Node.status()
      %{
        "data" => %{
          "broadhash" => "3062796e3cc415d086af3c959332bd445dcb3f1204c78e04dd78ede388d33090",
          "consensus" => 100,
          "currentTime" => 1555081155265,
          "height" => 8852832,
          "loaded" => true,
          "networkHeight" => 8852832,
          "secondsSinceEpoch" => 90971955,
          "syncing" => false,
          "transactions" => %{
            "confirmed" => 2460054,
            "total" => 2460054,
            "unconfirmed" => 0,
            "unprocessed" => 0,
            "unsigned" => 0
          }
        },
        "links" => %{},
        "meta" => %{}
      }
  """
  @spec status() :: Map.t()
  def status() do
    LiskApiElixirClient.handle_get_request('/node/status', %{})
  end

  @doc """
  Get node constants.

  ## Examples
      iex> LiskApiElixirClient.Node.constants()
      %{
        "data" => %{
          "build" => "2019-04-10T08:09:54.000Z",
          "commit" => "6bbf0fa892649f60fddd2b5d09b5a211c986fbf0",
          "epoch" => "2016-05-24T17:00:00.000Z",
          "fees" => %{
            "dappDeposit" => "10000000",
            "dappRegistration" => "2500000000",
            "dappWithdrawal" => "10000000",
            "delegate" => "2500000000",
            "multisignature" => "500000000",
            "secondSignature" => "500000000",
            "send" => "10000000",
            "vote" => "100000000"
          },
          "milestone" => "2",
          "nethash" => "ed14889723f24ecc54871d058d98ce91ff2f973192075c0155ba2b7b70ad2511",
          "nonce" => "xv2kgvuwnzd7d0rm",
          "protocolVersion" => "1.0",
          "reward" => "300000000",
          "supply" => "13120395700000000",
          "version" => "1.5.1"
        },
        "links" => %{},
        "meta" => %{}
      }
  """
  @spec constants() :: Map.t()
  def constants() do
    LiskApiElixirClient.handle_get_request('/node/constants', %{})
  end

  @doc """
  Get forging status.

  ## Examples
      iex> LiskApiElixirClient.Node.get_forging_status()
  """
  @spec get_forging_status() :: Map.t()
  def get_forging_status() do
    LiskApiElixirClient.handle_get_request('/node/status/forging', %{})
  end

  @doc """
  Update node forging.

  ## Examples
      iex> LiskApiElixirClient.Node.update_forging_status(%{forging: true, password: "mypass", publicKey: "fd061b9146691f3c56504be051175d5b76d1b1d0179c5c4370e18534c5882122"})
  """
  @spec update_forging_status(Map.t()) :: Map.t()
  def update_forging_status(args) do
    LiskApiElixirClient.handle_put_request('/node/status/forging', args)
  end

  @doc """
  Get node pending transactions by state.

  ## Examples
      iex> LiskApiElixirClient.Node.get_transactions(%{state: "unprocessed"})
      %{
        "data" => [],
        "links" => %{},
        "meta" => %{"count" => 0, "limit" => 10, "offset" => 0}
      }
  """
  @spec get_transactions(Map.t()) :: Map.t()
  def get_transactions(args) do
    LiskApiElixirClient.handle_get_request("/node/transactions/#{args.state}", %{})
  end
end
