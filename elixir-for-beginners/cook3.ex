defmodule Cook3 do
  @moduledoc false
  def cook3(food) when food == 0 do
    "Nothing cooking"
  end

  def cook3(food) when is_integer(food), do: "food is a number #{food}?"
  def cook3(food) when is_atom(food), do: "food is atomic"
  def cook3(food) when is_binary(food), do: cook3("boil", food)
  def cook3(type, food), do: "#{type} #{food}"
end

IO.inspect Cook3.cook3("chicken")
