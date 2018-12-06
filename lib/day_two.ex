defmodule DayTwo do
  def part_one(input) do
    {twos, threes} = Enum.reduce(input, { 0, 0 }, fn line, { twos, threes } ->
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

  def input do
    {:ok, data} = File.read(System.cwd <> "/lib/input/day_two.txt")

    data |> String.split("\n")
  end
end