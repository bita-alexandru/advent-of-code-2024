defmodule Part1 do
  def solve do
    grid =
      "input.txt"
      |> File.stream!()
      |> Enum.with_index()
      |> Enum.reduce(Map.new(), fn {line, i}, acc_map ->
        line
        |> String.trim()
        |> String.graphemes()
        |> Enum.with_index()
        |> Enum.reduce(acc_map, fn {val, j}, acc ->
          acc |> Map.put({i, j}, val)
        end)
      end)

    [start_pos, end_pos] =
      [
        grid |> Map.filter(fn {k, v} -> v == "S" end) |> Map.keys() |> List.first(),
        grid |> Map.filter(fn {k, v} -> v == "E" end) |> Map.keys() |> List.first()
      ]

    dir = [0, 1]
    # TODO, bfs: +1 same dir, +1000 for each dir change before move
  end
end
