# Elnum

I'm going through the book "Introducing Elixir".

This is a Mix app that uses Supervisor/GenServer to asynchonsouly update state according to basic arithmetic operations.

When the Elnum process is stopped or crashes, ElnumSup revives it.

Example:

```
$ iex -S mix

Erlang/OTP 20 [erts-9.2.1] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Interactive Elixir (1.6.2) - press Ctrl+C to exit (type h() ENTER for help)

iex(1)> import Dashboard
Dashboard

iex(2)> start
Initializing Elnum
{:ok, #PID<0.112.0>}

iex(3)> add 3
Updating state async!
:ok
%Elnum.State{number: 3}

iex(4)> divide 10
Updating state async!
:ok
%Elnum.State{number: 0.3}

iex(5)> subtract 4
Updating state async!
:ok
%Elnum.State{number: -3.7}

iex(6)> multiply 100
Updating state async!
:ok
%Elnum.State{number: -370.0}

iex(7)> stop
Stopping Elnum
Initializing Elnum
:ok
```
