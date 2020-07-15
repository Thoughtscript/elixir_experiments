# Tasks are stateless async function calls 
## They are called once within their lifetime
## They are designed for spawned concurrency

task1 = Task.async(fn -> IO.puts("Message within Task") end)
Task.await(task1)

# Note that Task.async() wraps a function
## sum() is called in the body of the anon function
sum = fn (a, b) -> IO.puts(a + b) end
task2 = Task.async(fn -> sum.(1, 2) end)
Task.await(task2)
