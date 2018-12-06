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

  test "part two" do
    input = [
      "abcde",
      "fghij",
      "klmno",
      "pqrst",
      "fguij",
      "axcye",
      "wvxyz",
    ]

    assert DayTwo.part_two(input) == "fgij"
  end
end