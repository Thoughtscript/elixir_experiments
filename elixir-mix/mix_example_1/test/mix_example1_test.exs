defmodule MixExample1Test do
  use ExUnit.Case
  doctest MixExample1

  test "greets the world" do
    assert MixExample1.hello() == :world
  end
end
