# Axiom Example App

## Build

```
rebar get-deps
rebar compile
```

## Run

```erlang
erl -pa ebin deps/*/ebin
1> application:start(axiom_test).
```
