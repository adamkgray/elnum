defmodule ElnumServer do
  use GenServer

  defmodule State do
    defstruct number: 0
  end

  def start_link do
    GenServer.start_link(__MODULE__, [], [{:name, __MODULE__}])
  end

  def init([]) do
    IO.puts("Initializing ElnumServer")
    {:ok, %State{}}
  end

  def handle_call(_msg, _from, state) do
    {:reply, state, state}
  end


  def handle_cast({operation, number}, state) do
    IO.puts("Updating state async!")
    :timer.sleep(1000)

    new_state = case operation do
      :add -> state.number + number
      :subtract -> state.number - number
      :multiply -> state.number * number
      :divide -> state.number / number
    end

    new_state = %State{number: new_state}

    {:noreply, new_state}
  end
end
