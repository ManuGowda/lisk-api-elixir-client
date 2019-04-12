defmodule LiskApiElixirClient.Accounts do
  @moduledoc """
  Functions for retrieving information from accounts.
  """

  @doc """
  Get list of all lisk accounts.

  ## Examples

      iex> LiskApiElixirClient.Accounts.get(%{address: "9432408387584811870L"})
      %{
        "data" => [
          %{
            "address" => "9432408387584811870L",
            "balance" => "0",
            "delegate" => %{
              "approval" => 0,
              "missedBlocks" => 1081,
              "producedBlocks" => 14671,
              "productivity" => 93.14,
              "rank" => 751,
              "rewards" => "0",
              "username" => "genesis_55",
              "vote" => "7494462048"
            },
            "publicKey" => "89e546e33eadad6d04d0d89946432058652b2491739f73128ee7b7cfd2a3776c",
            "secondPublicKey" => "",
            "unconfirmedBalance" => "0"
          }
        ],
        "links" => %{},
        "meta" => %{"limit" => 10, "offset" => 0}
      }
  """
  @spec get(Map.t()) :: Map.t()
  def get(args) do
    LiskApiElixirClient.handle_get_request('/accounts', args)
  end

  @doc """
  Get multisignature groups for a given address.

  ## Examples
      iex> LiskApiElixirClient.Accounts.get_multisignature_groups(%{address: "13210807928479793744L"})
      %{
        "data" => [
          %{
            "address" => "13210807928479793744L",
            "balance" => "170000000",
            "lifetime" => 24,
            "members" => [
              %{
                "address" => "13975469605256346147L",
                "publicKey" => "53a900cfc84df93d7da0c6b4141eb14218521cebedfcf46e99d66f4e443c5087",
                "secondPublicKey" => ""
              },
              %{
                "address" => "16051924221958141250L",
                "publicKey" => "5cc9506f54c1206527b0303e397229d051f2dbb4b2173eb06932d4f4188d6e37",
                "secondPublicKey" => "5671f573463780061a90aedac03e10bce57c21aa57c3c6aed47ec066c31ef311"
              },
              %{
                "address" => "5074579671655205332L",
                "publicKey" => "035449342ceed811d9c6f944fb95b3abc878c5edf841a67c3a31a41ce3282c5f",
                "secondPublicKey" => ""
              }
            ],
            "min" => 2,
            "publicKey" => "8840b95cc1cd4ab231c5d391b201754f3423fc7c854461e68e7f567aed5311ef",
            "secondPublicKey" => "ce472bbb07682bc8eac08dc31cb3dcbbce6641fd1c623cf8ca2e8ff33b7a9433",
            "unconfirmedBalance" => "170000000"
          }
        ],
        "links" => %{},
        "meta" => %{}
      }
  """
  @spec get_multisignature_groups(Map.t()) :: Map.t()
  def get_multisignature_groups(args) do
    LiskApiElixirClient.handle_get_request("/accounts/#{args.address}/multisignature_groups", %{})
  end

  @doc """
  Get multisignature memberships for a given address.

  ## Examples

      iex> LiskApiElixirClient.Accounts.get_multisignature_memberships(%{address: "13210807928479793744L"})
      %{
        "data" => [
          %{
            "address" => "13210807928479793744L",
            "balance" => "170000000",
            "lifetime" => 24,
            "members" => [
              %{
                "address" => "13975469605256346147L",
                "publicKey" => "53a900cfc84df93d7da0c6b4141eb14218521cebedfcf46e99d66f4e443c5087",
                "secondPublicKey" => ""
              },
              %{
                "address" => "16051924221958141250L",
                "publicKey" => "5cc9506f54c1206527b0303e397229d051f2dbb4b2173eb06932d4f4188d6e37",
                "secondPublicKey" => "5671f573463780061a90aedac03e10bce57c21aa57c3c6aed47ec066c31ef311"
              },
              %{
                "address" => "5074579671655205332L",
                "publicKey" => "035449342ceed811d9c6f944fb95b3abc878c5edf841a67c3a31a41ce3282c5f",
                "secondPublicKey" => ""
              }
            ],
            "min" => 2,
            "publicKey" => "8840b95cc1cd4ab231c5d391b201754f3423fc7c854461e68e7f567aed5311ef",
            "secondPublicKey" => "ce472bbb07682bc8eac08dc31cb3dcbbce6641fd1c623cf8ca2e8ff33b7a9433",
            "unconfirmedBalance" => "170000000"
          }
        ],
        "links" => %{},
        "meta" => %{}
      }
  """
  @spec get_multisignature_memberships(Map.t()) :: Map.t()
  def get_multisignature_memberships(args) do
    LiskApiElixirClient.handle_get_request(
      "/accounts/#{args.address}/multisignature_memberships",
      %{}
    )
  end
end
