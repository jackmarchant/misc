defmodule SumListTest do
  use ExUnit.Case
doctest SumList

  test "sums a list of numbers" do
    assert SumList.sum([1, 2, 3, 4, 5]) == 15
  end
end
