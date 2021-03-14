require 'open-uri'
require 'nokogiri'

# url = "https://en.wikipedia.org/wiki/List_of_painters_by_name_beginning_with_%22A%22"
url = 'painters_a.html'

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.div-col li > a').each do |element|
html_doc.css('.div-col').css('li').each_with_index do |element, index|
  puts index
  # puts element.attribute('title')
  puts element.text.strip
  puts element.element_children.first
  # puts element.text.strip.class
  # puts element.attribute('a')
  puts '_'
  # puts ''
  # puts element.text.strip
  # puts element.attribute('href').value
end
