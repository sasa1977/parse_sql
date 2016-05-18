Nonterminals
select_statement
fields
field
table.

Terminals
select
from
identifier
separator.

Rootsymbol select_statement.



select_statement -> select fields from table :
  #{from => '$4', fields => '$2'}.

fields -> field separator fields : ['$1'|'$3'].
fields -> field : ['$1'].

field -> identifier: string('$1').
table -> identifier: string('$1').


Erlang code.

string({_, _Line, Name}) -> list_to_binary(Name).
