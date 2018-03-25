defmodule Dashboard do
  def stop do
    IO.puts("Stopping Elnum")
    GenServer.stop(ElnumServer)
  end

  def call do
    GenServer.call(ElnumServer, {})
  end

  def add(number) do
    GenServer.cast(ElnumServer, {:add, number})
  end

  def subtract(number) do
    GenServer.cast(ElnumServer, {:subtract, number})
  end

  def multiply(number) do
    GenServer.cast(ElnumServer, {:multiply, number})
  end

  def divide(number) do
    GenServer.cast(ElnumServer, {:divide, number})
  end
end
