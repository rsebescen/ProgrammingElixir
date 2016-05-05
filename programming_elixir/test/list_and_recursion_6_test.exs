defmodule ListsAndRecursion6Test do
  use ExUnit.Case

  test "flatten" do
    assert MyEnum.flatten([1,[2,3],[4,5,[6]]]) == [1,2,3,4,5,6]
    assert MyEnum.flatten([1,[2,3]]) == [1,2,3]
  end
end
