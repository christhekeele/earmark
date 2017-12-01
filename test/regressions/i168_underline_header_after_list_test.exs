defmodule Regressions.I168UnderlineHeaderAfterList do
  use ExUnit.Case

  @underline_header_after_list """
  * foo

  bar
  ---

  baz
  """
  test "Issue https://github.com/pragdave/earmark/issues/168" do
    result = Earmark.as_html! @underline_header_after_list
    assert result == """
                     <ul>
                     <li>foo
                     </li>
                     </ul>
                     <h1>bar</h1>
                     <p>baz
                     </p>
                     """
  end
end
