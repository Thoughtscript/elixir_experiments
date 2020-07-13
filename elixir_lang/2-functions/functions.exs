# Shorthand notation
sum = fn (a, b) -> a + b end
IO.puts(sum.(1, 5))

# Capture notation
sum = &(&1 + &2) 
IO.puts(sum.(2, 5))

# Named functions
## Defined only within a module
defmodule Math do
    def add(arg1, arg2) do
       arg1 + arg2
    end

    ## Can contain guards that act as a conditional check
    ## Can contain guards that act as a type check
    def sum(arg1, arg2) when arg1 > 3 do
       arg1 + arg2
    end
end

IO.puts(Math.add(1,2))
IO.puts(Math.sum(5,1))
# Will throw an error
IO.puts(Math.sum(1,1))