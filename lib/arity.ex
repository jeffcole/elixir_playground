defmodule Arity do
  def sum(a, b \\ 0) do
    a + b
  end

  def run do
    IO.inspect Arity.__info__(:functions)
    # [sum: 1, sum: 2]
  end
end
