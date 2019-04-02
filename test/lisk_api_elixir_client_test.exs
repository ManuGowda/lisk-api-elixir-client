defmodule LiskApiElixirClientTest do
  use ExUnit.Case
  doctest LiskApiElixirClient

  test "greets the world" do
    assert LiskApiElixirClient.hello() == :world
  end
end
