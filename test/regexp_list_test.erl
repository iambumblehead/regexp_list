-module(regexp_list_test).
-author('bumblehead <chris@bumblehead.com>').

-include_lib("eunit/include/eunit.hrl").

%% is_output_test() ->
%%     io:format(user, "output this to eunit console ~p", [{this}]).

is_nomatch_test() ->
    nomatch = regexp_list:first_match([{validation, "^mee+[A-Z]*$"}], "mystring").

is_match1_test() ->
    {match,validation,["meeeE"]} =
        regexp_list:first_match([{validation, "^mee+[A-Z]*$"}], "meeeE").


