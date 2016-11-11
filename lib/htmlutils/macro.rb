module HtmlUtils
  puts self.instance_methods

  def loadScripts(urls, type="text/javascript")
    str = ""
    urls.each do |url|
      str << %{<script type="#{type}" src="#{url}"></script>\n}
    end
    str
  end
  
  def loadStyles(urls, type="text/css")
    str = ""
    urls.each do |url|
      str << %{<link type="#{type}" rel="stylesheet" src="#{url}"}
    end
  end
  
  def self.makeVTable(data)
    str = ""
    str << "<table>\n"
    str << " <tr>\n"
    data.each do |d|
      str << %{  <th>#{d[0]}</th>\n}
    end
    
    str << " </tr>\n"
    
    data.each do |d|
      str << " <tr>\n"
      d[1..-1].each do |d1|
        str << "  <td>#{d1}</td>\n"
      end
      str << " </tr>\n"
    end
    
    str << "</table>\n"
  end
end

