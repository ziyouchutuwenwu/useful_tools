-module(on_app_start).

-export([main/1]).
-export([interprete_modules/0]).

main(_Args) ->
  io:format("~n"),
  interprete_modules().

interprete_modules() ->
  int:ni(utf8_list),
  int:ni(data_format),
  int:ni(crypt),
  int:ni(safe_atom),
  int:ni(data_convert),
  int:ni(random_generator),

  io:format("输入 int:interpreted(). 或者 il(). 查看模块列表~n").