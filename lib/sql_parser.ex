defmodule SqlParser do
  def parse(query) do
    with {:ok, tokens, _} <- :sql_lexer.string(to_char_list(query)),
      do: :sql_parser.parse(tokens)
  end
end
