require "minitest/autorun"
require "htmlutils"

class HUTest < Minitest::Test
  def test_table
    assert_equal HtmlUtils.makeVTable([["Name", "go", "ruby"], ["Version", "1.7", "1.8"]]),
<<-HTML
<table>
 <tr>
  <th>Name</th>
  <th>Version</th>
 </tr>
 <tr>
  <td>go</td>
  <td>ruby</td>
 </tr>
 <tr>
  <td>1.7</td>
  <td>1.8</td>
 </tr>
</table>
HTML
  end
end
