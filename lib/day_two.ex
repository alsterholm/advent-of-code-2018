defmodule DayTwo do
  def part_one(input) do
    {twos, threes} = Enum.reduce(input, {0, 0}, fn line, {twos, threes} ->
      {
        if(string_contains_same_character?(line, 2), do: twos + 1, else: twos),
        if(string_contains_same_character?(line, 3), do: threes + 1, else: threes)
      }
    end)

    twos * threes
  end

  defp string_contains_same_character?(str, count) do
    str
    |> String.graphemes
    |> Enum.group_by(fn x -> x end)
    |> Map.values
    |> Enum.any?(fn x -> length(x) == count end)
  end

  def part_two(input) do
    input
    |> Enum.flat_map((fn x -> Enum.map(input, fn y -> {x, y} end) end))
    |> Enum.find(fn {x, y} -> string_difference(x, y) == 1 end)
    |> remove_difference
  end

  defp string_difference(x, y) do
    Enum.zip(String.graphemes(x), String.graphemes(y))
    |> Enum.map(fn {a, b} -> a == b end)
    |> Enum.reject(fn b -> b end)
    |> length
  end

  defp remove_difference({x, y}) do
    Enum.zip(String.graphemes(x), String.graphemes(y))
    |> Enum.filter(fn {a, b} -> a == b end)
    |> Enum.map(&elem(&1, 1))
    |> Enum.join
  end

  def input do
    {:ok, data} = File.read(System.cwd <> "/lib/input/day_two.txt")

    data |> String.split("\n")
  end
end