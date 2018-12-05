defmodule DayOneTest do
  use ExUnit.Case
 
  test "part one" do
    assert DayOne.part_one([1, 1, 1]) == 3
    assert DayOne.part_one([-1, -2, -3]) == -6
    assert DayOne.part_one([1, 1, -2]) == 0
  end

  test "part two" do
    assert DayOne.part_two([1, -1]) == 0
    assert DayOne.part_two([3, 3, 4, -2, -4]) == 10
    assert DayOne.part_two([-6, 3, 8, 5, -6]) == 5
    assert DayOne.part_two([7, 7, -2, -7, -4]) == 14
  end
end