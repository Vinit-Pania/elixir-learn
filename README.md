# Example

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `example` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:example, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/example>.

TO create run the whole elixir as a project to do that we need to do soame changes in mix.exs and add a starter function lets say "main" in /lib/ example.ex > 

```elixir
defmodule Example do
def start(_type, _args)do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one) #need for running directly form cmd prompt
  end
end
```


```elixir
mod: {Example, []},
```