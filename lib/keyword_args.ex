defmodule KeywordArgs do
  def display(_positional_arg, keyword_args) do
    IO.inspect(keyword_args)
  end

  def run do
    display(:positional_arg, key: :value)
    # [key: :value]
  end
end
