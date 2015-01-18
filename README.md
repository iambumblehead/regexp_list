regexp_list
===========
**(c)[Bumblehead][0], 2015** [MIT-license](#license)

### OVERVIEW:

`regexp_list:first_match` takes a list of regexp and a string and returns the first `re:run/3` match from the list.

```erlang
regexp_list:first_match([{me, "^me+[A-Z]*$"}], "meee"). % nomatch
regexp_list:first_match([{me, "^me+[A-Z]*$"}], "meeE"). % {match, me, ["meeE"]}
```

[0]: http://www.bumblehead.com "bumblehead"
[1]: http://www.erlang.org/doc/man/dialyzer.html "dialyzer"
[2]: http://user.it.uu.se/~tobiasl/publications/typer.pdf "typer"
[3]: http://erlang.org/doc/apps/eunit/chapter.html "eunit"
[4]: http://www.erlang.org/doc/apps/edoc/chapter.html "edoc"
[5]: https://github.com/rebar/rebar "rebar"


---------------------------------------------------------

 1. Compile
 
    ```bash
    $ rebar compile
    ```
 2. Eunit
 
    ```bash
    $ rebar eunit
    ```
 3. EDoc
 
    ```bash
    $ rebar doc
    ```

---------------------------------------------------------
#### <a id="license">License:

![scrounge](http://github.com/iambumblehead/scroungejs/raw/master/img/hand.png) 

(The MIT License)

Copyright (c) 2015 [Bumblehead][0] <chris@bumblehead.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
