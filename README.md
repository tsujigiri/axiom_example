# Axiom Example App

## Build

```
rebar get-deps
rebar compile
```

## Run

```erlang
erl -pa ebin deps/*/ebin
1> application:start(crypto).
2> application:start(ranch).
3> application:start(cowboy).
4> axiom_test:start().
```

