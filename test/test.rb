require "minitest/autorun"
require "htmlutils"

class HUTest < Minitest::Test
  def test_styles
    expected = <<-HTML
<link type="text/css" rel="stylesheet" href="/css/normalize.css">
<link type="text/css" rel="stylesheet" href="/css/materialize.min.css">
HTML
    assert_equal expected, HtmlUtils.loadStyles(["/css/normalize.css", "/css/materialize.min.css"])
  end

  def test_scripts
    expected = <<-HTML
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/materialize.min.js"></script>
HTML
    assert_equal expected, HtmlUtils.loadScripts(["/js/jquery.min.js", "/js/materialize.min.js"])
  end

  def test_vtable
    expected = <<-HTML
<table >
 <tr >
  <th >Name</th>
  <th >Version</th>
 </tr>
 <tr >
  <td >go</td>
  <td >ruby</td>
 </tr>
 <tr >
  <td >1.7</td>
  <td >1.8</td>
 </tr>
</table>
HTML
    assert_equal expected, HtmlUtils.makeVTable([["Name", "go", "ruby"], ["Version", "1.7", "1.8"]])
  end
  
  def test_keywords
    expected = %{<meta name="keywords" contents="foo,bar,ruby,htmlutils">}
    assert_equal expected, HtmlUtils.keywords(["foo", "bar", "ruby", "htmlutils"])
  end
end
