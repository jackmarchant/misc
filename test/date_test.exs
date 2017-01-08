defmodule DateTest do
  use ExUnit.Case
  doctest Date

  test "it gets the first tuple from multiple" do
    assert Date.date({{2017, 1, 8}, {14, 45, 2}}) == {2017, 1, 8}
  end

  test "it gets a formatted date as a string with slashes" do
    assert Date.fmt({2017, 1, 8}) == "8/1/2017"
  end

  test "it gets a formatted date as a string with dashes" do
    assert Date.fmt({2017, 1, 8}, '-') == "8-1-2017"
  end
end
