defmodule LiskApiElixirClient.Blocks do
  @moduledoc """
  Functions for retrieving information from Blocks.
  """

  @doc """
  Get list of blocks.

  ## Examples
      iex> LiskApiElixirClient.Blocks.get(%{address: "13210807928479793744L", limit: 1})
      %{
        "data" => [
          %{
            "blockSignature" => "c752e167290a7bad2c4db7fc802f675b22d9aabbac5b91630392610877e1bdfe9f60ee2a111ef9e26435c47372204e346e7de555d2985ef5b63642e8d9cac201",
            "confirmations" => 1,
            "generatorAddress" => "17438085793668748066L",
            "generatorPublicKey" => "a2fc2420262f081d0f6426364301ef40597756e163f6b1fd813eff9b03594125",
            "height" => 8852781,
            "id" => "679856053002753328",
            "numberOfTransactions" => 0,
            "payloadHash" => "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
            "payloadLength" => 0,
            "previousBlockId" => "14219947436276312002",
            "reward" => "300000000",
            "timestamp" => 90971440,
            "totalAmount" => "0",
            "totalFee" => "0",
            "totalForged" => "300000000",
            "version" => 1
          }
        ],
        "links" => %{},
        "meta" => %{"limit" => 1, "offset" => 0}
      }
  """
  @spec get(Map.t()) :: Map.t()
  def get(args) do
    LiskApiElixirClient.handle_get_request('/blocks', args)
  end
end
