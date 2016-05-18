# SqlParser

Usage:

```
$ iex -S mix

iex(1)> SqlParser.parse("SELECT foo, bar FROM baz")
{:ok, %{fields: ["foo", "bar"], from: "baz"}}

iex(2)> SqlParser.parse("SELECT foo, bar FROM")
{:error, {1, :sql_parser, ['syntax error before: ', []]}}
```
