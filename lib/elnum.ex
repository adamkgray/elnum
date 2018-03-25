defmodule Elnum do
  use Application

  def start(_type, _args) do
    IO.puts("Starting Elnum ... ")
    ElnumSup.start_link()
  end
end
