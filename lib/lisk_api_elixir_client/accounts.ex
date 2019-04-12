defmodule LiskApiElixirClient.Accounts do
  @moduledoc """
  Functions for retrieving information from accounts.
  """

  @doc """
  Get Lisk account.
  **Method**: GET
  LiskApiElixirClient.Accounts.get(%{address?: string, publicKey?: publicKey})
  # => { data, meta, links }
  """
  def get(args) do
    LiskApiElixirClient.handle_get_request('/accounts', args)
  end

  @doc """
  Get multisignature groups.
  **Method**: GET
  LiskApiElixirClient.Accounts.get_multisignature_groups(%{address: string})
  # => { data, meta, links }
  """
  def get_multisignature_groups(args) do
    LiskApiElixirClient.handle_get_request("/accounts/#{args.address}/multisignature_groups", %{})
  end

  @doc """
  Get Lisk account publickey.
  **Method**: GET
  LiskApiElixirClient.Accounts.get_multisignature_memberships(%{address: string})
  # => { data, meta, links }
  """
  def get_multisignature_memberships(args) do
    LiskApiElixirClient.handle_get_request(
      "/accounts/#{args.address}/multisignature_memberships",
      %{}
    )
  end
end
