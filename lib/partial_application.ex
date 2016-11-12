defmodule PartialApplication do
  def product(a, b) do
    a * b
  end

  def partial_product_anon(b) do
    fn -> product(2, b) end
  end

  def partial_product_capture_error(b) do
    # &product(2, b)

    # ** (CompileError) lib/partial_application.ex:11: invalid args for &,
    # expected an expression in the format of &Mod.fun/arity, &local/arity or a
    # capture containing at least one argument as &1, got: product(2, b)
  end

  def partial_product_capture do
    &product(2, &1)
  end
end

IO.inspect PartialApplication.partial_product_anon(3)
# #Function<0.133469699/0 in PartialApplication.partial_product_anon/1>
# Note the `/0` for the returned function

IO.inspect PartialApplication.partial_product_anon(3).()
# 6

IO.inspect PartialApplication.partial_product_capture()
# #Function<1.133469699/1 in PartialApplication.partial_product_capture/0>
# Note the `/1` for the returned function

IO.inspect PartialApplication.partial_product_capture().(3)
# 6
