-module(code_formater_2). -export([arithmatic_operation/3]). arithmatic_operation(Operation, Init, Elements) when Elements /= [], Operation == add; Operation == mul ->
Fun = fun(Value, Output) -> case Operation of add -> Value + Output; mul -> Value * Output end end, lists:foldl(Fun, Init, Elements).
