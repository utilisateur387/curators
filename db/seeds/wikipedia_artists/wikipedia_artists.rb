require 'open-uri'
require 'nokogiri'
require 'httparty'

# url = "https://en.wikipedia.org/wiki/List_of_painters_by_name_beginning_with_%22A%22"

url = 'painters_a.html'

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.div-col li > a').each do |element|
html_doc.css('.div-col').css('li').each_with_index do |element, index|
  puts index

  # puts element.element_children.first.attribute('title')
  # puts element.element_children.first.attribute('href')
  # puts '_'

  title = element.element_children.first.attribute('title')
  link = element.element_children.first.attribute('href')

  url = "https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=#{title}"
  response = HTTParty.get(url)
  page_id = response["query"]["pages"].keys[0]
end




url = "https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=Awataguchi Takamitsu"
response = HTTParty.get(url)



artists = response.map do |artist_data|
  # puts artist_data
  page_id = response["query"]["pages"].keys[0]
  # puts "_"
  # puts response["query"]["pages"][page_id]["extract"]
  # puts
  # Artwork.new(
  #   title: artwork_data["title"],
  #   completion_year: artwork_data["completitionYear"],
  #   tmp_image_url: artwork_data["image"],
  #   tmp_artist_name: artwork_data["artistName"]
  # )
end


