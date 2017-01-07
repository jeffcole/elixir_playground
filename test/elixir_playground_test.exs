require IEx

defmodule ElixirPlaygroundTest do
  use ExUnit.Case
  doctest ElixirPlayground

  test "the truth" do
    # IEx.pry()
    assert 1 + 1 == 2
  end
end
