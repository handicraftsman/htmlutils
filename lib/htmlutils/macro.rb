module HtmlUtils
  # Generates script-loading code
  def self.loadScripts(urls, type="text/javascript")
    str = ""
    urls.each do |url|
      str << %{<script type="#{type}" src="#{url}"></script>\n}
    end
    str
  end
  
  # Generates style-loading code
  def self.loadStyles(urls, type="text/css")
    str = ""
    urls.each do |url|
      str << %{<link type="#{type}" rel="stylesheet" href="#{url}">\n}
    end
    str
  end

  # Generates HTML-loading code. Good for polymer-using apps.
  def self.importHTML(urls)
    str = ""
    urls.each do |url|
      str << %{<link rel="import" href="#{url}">\n}
    end
    str
  end
  
  # Generates vertical table
  def self.makeVTable(data, mainAttr="", trhAttr="", thAttr="", trAttr="", tdAttr="")
    str = ""
    str << "<table #{mainAttr}>\n"
    str << " <tr #{trhAttr}>\n"
    data.each do |d|
      str << %{  <th #{thAttr}>#{d[0]}</th>\n}
    end
    
    str << " </tr>\n"
    
    data.each do |d|
      str << " <tr #{trAttr}>\n"
      d[1..-1].each do |d1|
        str << "  <td #{tdAttr}>#{d1}</td>\n"
      end
      str << " </tr>\n"
    end
    
    str << "</table>\n"
  end
  
  # Allows easily adding keywords
  def self.keywords(words)
    str = ""
    words.each do |word|
      str << "#{word},"
    end
    %{<meta name="keywords" contents="#{str[0..-2]}">}
  end
  
  # Shortcut for string below
  def self.utf8
    %{<meta charset="UTF-8">}
  end  
end

