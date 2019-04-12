defmodule LiskApiElixirClient.Delegates do
  @moduledoc """
  Functions for retrieving information from Delegates.
  """

  @doc """
  Get list of delegates.

  ## Examples
      iex> LiskApiElixirClient.Delegates.get(%{sort: "rank:asc", limit: 1})
      %{
        "data" => [
          %{
            "account" => %{
              "address" => "2433857930558702776L",
              "publicKey" => "326bff18531703385d4037e5585b001e732c4a68afb8f82efe2b46c27dcf05aa",
              "secondPublicKey" => "3ec90a4cfcebc17399101c86b1f71a15d28b2b0d36d9434b80748688fabddde8"
            },
            "approval" => 41.67,
            "missedBlocks" => 279,
            "producedBlocks" => 72384,
            "productivity" => 99.62,
            "rank" => 1,
            "rewards" => "30445900000000",
            "username" => "tembo",
            "vote" => "5467654623455537"
          }
        ],
        "links" => %{},
        "meta" => %{"limit" => 1, "offset" => 0}
      }
  """
  @spec get(Map.t()) :: Map.t()
  def get(args) do
    LiskApiElixirClient.handle_get_request('/delegates', args)
  end

  @doc """
  Get list of standby delegates.

  ## Examples
      iex> LiskApiElixirClient.Delegates.get_standby(%{offset: 101,sort: "rank:asc", limit: 1})
      %{
        "data" => [
          %{
            "account" => %{
              "address" => "17890508407355636952L",
              "publicKey" => "286d8347dc9a9fa5bc3943598f6149e661396697a3b8ab4ebf870f7c14f0a465",
              "secondPublicKey" => ""
            },
            "approval" => 20.22,
            "missedBlocks" => 0,
            "producedBlocks" => 0,
            "productivity" => 0,
            "rank" => 102,
            "rewards" => "0",
            "username" => "elevate",
            "vote" => "2652802509581478"
          }
        ],
        "links" => %{},
        "meta" => %{"limit" => 1, "offset" => 101}
      }
  """
  @spec get_standby(Map.t()) :: Map.t()
  def get_standby(args) do
    LiskApiElixirClient.handle_get_request('/delegates', args)
  end

  @doc """
  Get list of next forgers.

  ## Examples
      iex> LiskApiElixirClient.Delegates.get_forgers(%{limit: 1})
      %{
        "data" => [
          %{
            "address" => "12490495662800209583L",
            "nextSlot" => 9097179,
            "publicKey" => "e36f75a27598512c2f4ad06fffeeffa37d3aad81c3a4edb77d871ec0ee933471",
            "username" => "crodam"
          }
        ],
        "links" => %{},
        "meta" => %{
          "currentSlot" => 9097178,
          "lastBlock" => 8852815,
          "lastBlockSlot" => 9097178,
          "limit" => 1,
          "offset" => 0
        }
      }
  """
  @spec get_forgers(Map.t()) :: Map.t()
  def get_forgers(args) do
    LiskApiElixirClient.handle_get_request('/delegates/forgers', args)
  end

  @doc """
  Get forger statistics.

  ## Examples
      iex> LiskApiElixirClient.Delegates.get_forging_statistics(%{address: "2433857930558702776L"})
      %{
        "data" => %{
          "count" => "72384",
          "fees" => "343085447618",
          "forged" => "30788985447618",
          "rewards" => "30445900000000"
        },
        "links" => %{},
        "meta" => %{"fromTimestamp" => 1464109200000, "toTimestamp" => 1555081031043}
      }
  """
  @spec get_forging_statistics(Map.t()) :: Map.t()
  def get_forging_statistics(args) do
    LiskApiElixirClient.handle_get_request("/delegates/#{args.address}/forging_statistics", args)
  end
end
