defmodule Cook2 do
  @moduledoc false
  def cook, do: cook("fry", "sausage")
  def cook(0), do: cook("bake", "banana")
  def cook(meat), do: cook("grill", meat)
  def cook(type, food), do: "#{type} #{food}"
end

IO.inspect Cook.cook
IO.inspect Cook.cook 0
IO.inspect Cook.cook "Turkey"
IO.inspect Cook.cook "bbq", "Turkey"
