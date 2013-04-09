-module(axiom_test).
-compile(export_all).

start() ->
	axiom:start(?MODULE).

handle(<<"GET">>, [<<"hi">>, Name], _Req) ->
	[<<"<h1>Hello, ">>, Name, <<"!</h1>">>].
