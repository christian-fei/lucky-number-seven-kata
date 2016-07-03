defmodule LuckyNumberSevenTest do
  use ExUnit.Case
  doctest LuckyNumberSeven

  @luckies_in_range_0_6 []
  @luckies_in_range_0_7 [7]
  @luckies_in_range_7_16 [7, 16]
  @luckies_in_range_0_200 [7, 16, 25, 34, 43, 52, 61, 70, 79, 88, 97, 106, 115, 124, 133, 142, 151, 160, 169, 178, 187, 196]

  # LuckyNumberSeven.in_range
  test "no lucky numbers in range 0 to 6" do
    assert LuckyNumberSeven.in_range(0..6) == @luckies_in_range_0_6
  end

  test "7 is a lucky number in range 0 to 7" do
    assert LuckyNumberSeven.in_range(0..7) == @luckies_in_range_0_7
  end

  test "7 and 16 are lucky numbers in range 0 to 20" do
    assert LuckyNumberSeven.in_range(0..20) == @luckies_in_range_7_16
  end

  test "lucky numbers in range 0 to 200" do
    assert LuckyNumberSeven.in_range(0..200) == @luckies_in_range_0_200
  end

  test "can be invoked with list" do
    assert LuckyNumberSeven.in_range([0,1,2,3,4,5,6]) == @luckies_in_range_0_6
  end


  # LuckyNumberSeven.lucky_sum
  test "lucky sum of 1 is 1" do
    assert LuckyNumberSeven.lucky_sum(1) == 1
  end

  test "lucky sum of 10 is 1" do
    assert LuckyNumberSeven.lucky_sum(10) == 1
  end

  test "lucky sum of 78 is 1" do
    assert LuckyNumberSeven.lucky_sum(78) == 6
  end


  # LuckyNumberSeven.is_lucky
  test "1 is not lucky" do
    assert LuckyNumberSeven.is_lucky(1) == false
  end

  test "7 is lucky" do
    assert LuckyNumberSeven.is_lucky(7) == true
  end
end
