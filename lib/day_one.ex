defmodule DayOne do
  def part_one(input) do
    input |> Enum.sum
  end
  
  def part_two(input) do
    input
    |> Stream.cycle
    |> Enum.reduce_while({0, MapSet.new([0])}, fn n, { current, seen } ->
      frequency = current + n
      
      if MapSet.member?(seen, frequency) do
        {:halt, frequency}
      else
        {:cont, {frequency, MapSet.put(seen, frequency)}}
      end
    end)
  end

  def input do
    {:ok, data} = File.read(System.cwd <> "/lib/input/day_one.txt")

    data
      |> String.split("\n")
      |> Enum.map(&(Integer.parse/1))
      |> Enum.map(&(elem(&1, 0)))
  end
end