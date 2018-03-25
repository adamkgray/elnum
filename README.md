# Elnum

I'm going through the book "Introducing Elixir".

This is a Mix app that uses Supervisor/GenServer to asynchonsouly update state according to basic arithmetic operations.

When the ElnumServer process is stopped or crashes, ElnumSup revives it.

Example:

```
$ iex -S mix

Erlang/OTP 20 [erts-9.2.1] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Starting Elnum ...
Initializing ElnumServer
Interactive Elixir (1.6.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> import Dashboard
Dashboard

iex(2)> call
%ElnumServer.State{number: 0}

iex(3)> add 3
Updating state async!
:ok

iex(4)> multiply 9
Updating state async!
:ok

iex(5)> call
%ElnumServer.State{number: 27}

iex(6)> stop
Stopping Elnum
Initializing ElnumServer
:ok

```
