defmodule HuggingFaceTest do
  use ExUnit.Case
  doctest HuggingFace

  test "greets the world" do
    assert HuggingFace.hello() == :world
  end
end
