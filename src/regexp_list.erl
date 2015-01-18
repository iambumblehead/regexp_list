-module(regexp_list).
-author('bumblehead <chris@bumblehead.com>').

-export([first_match/3]).
-export([first_match/2]).

-type re()          :: string().
-type reatom()      :: atom().
-type retuple()     :: {reatom(), re()}.
-type retuplelist() :: [retuple()].
-type reopts()      :: {atom()}.

-type compileerr()  :: {string(), integer()}.
-type errtype()     :: match_limit
                     | match_limit_recursion
                     | {compile, compileerr()}.


%% @doc return nomatch or a tuple pair, with the associated re atom and match
-spec first_match(retuplelist(), re(), reopts()) -> {error, errtype()} |
                                                    {match, reatom(), any()} |
                                                    nomatch.
first_match([],_,_) ->
    nomatch;
first_match([{Atom, RE}|RegExps], String, ReOpts) ->
    case re:run(String,RE,ReOpts) of
        {match, List} -> {match, Atom, List};
        nomatch       -> first_match(RegExps,String,ReOpts)
    end.

%% @doc calls first_match/3 w/ default reopts `[{capture,all,list}]`
-spec first_match(retuplelist(), re()) -> {error, errtype()} |
                                          {match, reatom(), any()} |
                                          nomatch.
first_match([],_) ->
    nomatch;
first_match([{Atom, RE}|RegExps], String) ->
    first_match([{Atom,RE}|RegExps], String, [{capture,all,list}]).

