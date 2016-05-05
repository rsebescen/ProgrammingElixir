defmodule MyEnum do
  @doc """
  All returns true if EVERY element of the list fullfils the condition, else otherwise
  """
  def all?(list, condition) do
    do_all?(list, condition, true)
  end

  defp do_all?([], _, prev) do
    prev
  end
  defp do_all?([head | tail], condition, prev) do
    if prev do
      do_all?(tail, condition, condition.(head))
    else
      false
    end
  end

  def each(list, transformation) do
    do_each(list, transformation)
  end

  defp do_each([], _) do
    []
  end

  defp do_each([head | tail], transformation) do
    [transformation.(head) | do_each(tail, transformation)]
  end

  def filter(list, filter) do
    do_filter(list, filter)
  end

  defp do_filter([], _) do
    []
  end

  defp do_filter([head | tail], filter) do
    if filter.(head) do
      [head | do_filter(tail, filter)]
    else
      do_filter(tail, filter)
    end
  end

  def split(list, onElement) do
    #split([[head, h], tail], onElement - 1)
    #[[head, h], tail]
    do_split(list, onElement, [])
  end

  defp do_split(tail, 0, firstPart) do
    [reverse(firstPart), tail]
  end

  defp do_split([head | tail], onElement, firstPart) do
    do_split(tail, onElement-1, [head | firstPart])
  end

  def take(list, howMany) do
    do_take(list, howMany, [])
  end

  defp do_take(_, 0, newList) do
    reverse(newList)
  end

  defp do_take([head | tail], howMany, newList) do
    do_take(tail, howMany-1, [head | newList])
  end

  def reverse(list) do
    do_reverse(list, [])
  end

  defp do_reverse([], newList) do
    newList
  end

  defp do_reverse([head | tail], newList) do
    do_reverse(tail, [head | newList])
  end

  def flatten([]) do
    []
  end

  def flatten([head | tail]) do
    flatten(head) ++ flatten(tail)
  end

  def flatten(item) do
    [item]
  end

end
