%%% OTP application behavior for axiom_test
-module(axiom_test_app).
-behaviour(application).
-export([start/2, stop/1]).

%% Start the axiom_test application
start(_StartType, _StartArgs) ->
  application:start(crypto),
  application:start(ranch),
  application:start(cowboy),
  axiom:start(axiom_test),
  axiom_test_sup:start_link().

%% Stop the axiom_test application
stop(_State) ->
  ok.
