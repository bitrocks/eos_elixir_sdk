defmodule EosElixirSdkTest do
  use ExUnit.Case
  doctest EosElixirSdk

  test "greets the world" do
    assert EosElixirSdk.hello() == :world
  end
end
