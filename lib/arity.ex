defmodule Arity do
  def sum(a, b \\ 0) do
    a + b
  end
end

IO.inspect Arity.__info__(:functions)
# [sum: 1, sum: 2]
