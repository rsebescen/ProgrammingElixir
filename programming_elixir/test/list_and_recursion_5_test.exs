defmodule ListsAndRecursion5Test do
  use ExUnit.Case
  doctest ProgrammingElixir

  # Exercise: ListsAndRecursion-5
  test "all?" do
    assert MyEnum.all?([1,2,3,4,5], &(&1<6)) == true
    assert MyEnum.all?([1,2,3,4,5], &(&1<5)) == false
  end

  test "each" do
    assert MyEnum.each([1,2,3], &(&1+1)) == [2,3,4]
    assert MyEnum.each([1,2,3], &(&1*2)) == [2,4,6]
  end

  test "filter" do
    assert MyEnum.filter([1,2,3], &(&1!=2)) == [1,3]
    assert MyEnum.filter([1,2,3,4], &(rem(&1,2)==0)) == [2,4]
  end

  test "split" do
    assert MyEnum.split([1,2,3,4], 2) == [[1,2],[3,4]]
    assert MyEnum.split([1,2,3,4], 1) == [[1],[2,3,4]]
  end

  test "take" do
    assert MyEnum.take([1,2,3,4,5], 3) == [1,2,3]
    assert MyEnum.take([1,2,3,4,5], 1) == [1]
  end
end
