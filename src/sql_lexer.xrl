Definitions.

Rules.

[\s\t\n\r]+ : skip_token.
[sS][eE][lL][eE][cC][tT] : {token, {select, TokenLine}}.
[fF][rR][oO][mM] : {token, {from, TokenLine}}.
[a-zA-Z_]+ : {token, {identifier, TokenLine, TokenChars}}.
, : {token, {separator, TokenLine}}.

Erlang code.
