defmodule LuckyNumberSeven do
  def in_range(range) do
    range
    |> Enum.into([])
    |> Enum.filter(&is_lucky/1)
  end

  def lucky_sum(number) when number < 10, do: number
  def lucky_sum(number) do
    "#{number}"
    |> String.graphemes
    |> Enum.map(&String.to_integer/1)
    |> Enum.reduce(0, &(&1 + &2))
    |> lucky_sum
  end

  def is_lucky(number) do
    lucky_sum(number) == 7
  end
end
