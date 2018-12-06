defmodule DayTwoTest do
  use ExUnit.Case

  test "part one" do
    input = [
      "abcdef",
      "bababc",
      "abbcde",
      "abcccd",
      "aabcdd",
      "abcdee",
      "ababab",
    ]

    assert DayTwo.part_one(input) == 12
  end
end