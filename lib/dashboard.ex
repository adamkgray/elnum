defmodule Dashboard do
  def start do
    ElnumSup.start_link()
  end

  def stop do
    IO.puts("Stopping Elnum")
    GenServer.stop(Elnum)
  end

  def call do
    GenServer.call(Elnum, {})
  end

  def add(number) do
    GenServer.cast(Elnum, {:add, number})
  end

  def subtract(number) do
    GenServer.cast(Elnum, {:subtract, number})
  end

  def multiply(number) do
    GenServer.cast(Elnum, {:multiply, number})
  end

  def divide(number) do
    GenServer.cast(Elnum, {:divide, number})
  end
end
