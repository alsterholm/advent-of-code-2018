defmodule AdventOfCode2018 do
  def main(args) do
    {opts, _, _}= OptionParser.parse(
      args,
      switches: [day: :string, part: :string],
      aliases: [d: :day, p: :part]
    )

    case {opts[:day], opts[:part]} do
      {"1", "1"} -> IO.puts DayOne.part_one(DayOne.input)
      {"1", "2"} -> IO.puts DayOne.part_two(DayOne.input)
      {"2", "1"} -> IO.puts DayTwo.part_one(DayTwo.input)
      {"2", "2"} -> IO.puts DayTwo.part_two(DayTwo.input)
    end
  end
end
