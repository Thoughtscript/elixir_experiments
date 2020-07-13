# There are no loops in Elixir only recursion
## Recursive functions can be overloaded
## They can also be divided into sequential operations

defmodule Loop do

  ## Handle empty
  def recurse([]) do
    IO.puts("Empty List supplied")
    [] 
  end

  ## Handle nil
  def recurse(arg) when arg === nil do
    IO.puts("nil supplied returning []")
    []
  end

  ## Handle nonempty and nonnil
  def recurse(arg) do
    head(arg)
  end

  ## Handle head
  def head(arg) do
    IO.puts(List.first(arg))
    ## Assign head and tail
    [head | tail] = arg
    IO.puts(head)
    IO.puts(tail)
    tail(tail)
  end

  ## Handle tail
  def tail(arg) do
    Enum.map(arg, fn n -> IO.puts(n) end)
    IO.puts(arg)
  end

end

IO.puts(Loop.recurse([1,2,3,4]))
IO.puts(Loop.recurse([]))
IO.puts(Loop.recurse(nil))
