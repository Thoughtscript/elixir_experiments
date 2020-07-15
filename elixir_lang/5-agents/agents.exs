# Agents are like tasks but preserve state until stop()

# Declare an agent
## Note how Agent is used to manage all agents
{:ok, agent1} = Agent.start_link fn -> [] end

# Update the created agent preservuing state
Agent.update(agent1, fn _list -> 123 end)
Agent.update(agent1, fn content -> %{a: content} end)
Agent.update(agent1, fn content -> [12 | [content]] end)
Agent.update(agent1, fn list -> [:nop | list] end)

# Get state from the created agent
Agent.get(agent1, fn content -> content end)

# Stop the agent
Agent.stop(agent1)