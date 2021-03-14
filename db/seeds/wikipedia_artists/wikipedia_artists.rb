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

  title = element.element_children.first.attribute('title').text.strip
  puts title
  new_title = title.gsub(/[àáâãäåā]/, "a")
  new_title = new_title.gsub(/[ÀÁÂÄÆÃÅĀ]/, "A")
  new_title = new_title.gsub(/[ôöòóøōõ]/, "o")
  new_title = new_title.gsub(/[ÔÖÒÓØŌÕ]/, "O")
  new_title = new_title.gsub(/[èéêëēėę]/, "e")
  new_title = new_title.gsub(/[ÈÉÊËĒĖĘ]/, "E")
  new_title = new_title.gsub(/[îïíīįì]/, "i")
  new_title = new_title.gsub(/[ÎÏÍĪĮÌ]/, "i")
  new_title = new_title.gsub(/[śš]/, "s")
  new_title = new_title.gsub(/[ŚŠ]/, "S")
  new_title = new_title.gsub(/[çćč]/, "c")
  new_title = new_title.gsub(/[ÇĆČ]/, "C")
  new_title = new_title.gsub(/[ÿ]/, "y")
  new_title = new_title.gsub(/[Ÿ]/, "Y")
  new_title = new_title.gsub(/[ûüùúū]/, "u")
  new_title = new_title.gsub(/[ÛÜÙÚŪ]/, "U")
  new_title = new_title.gsub(/[žźż]/, "z")
  new_title = new_title.gsub(/[ŽŹŻ]/, "Z")
  new_title = new_title.gsub(/[ñń]/, "n")
  new_title = new_title.gsub(/[ÑŃ]/, "N")


  link = element.element_children.first.attribute('href')

  url = "https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=#{new_title}"
  response = HTTParty.get(url)
  page_id = response["query"]["pages"].keys[0]
  puts response["query"]["pages"][page_id]["extract"]
end


# url = "https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=Awataguchi Takamitsu"
# response = HTTParty.get(url)

# artists = response.map do |artist_data|
#   page_id = response["query"]["pages"].keys[0]
#   # puts response["query"]["pages"][page_id]["extract"]
#   # puts "_"
#   # puts
#   # Artwork.new(
#   #   title: artwork_data["title"],
#   #   completion_year: artwork_data["completitionYear"],
#   #   tmp_image_url: artwork_data["image"],
#   #   tmp_artist_name: artwork_data["artistName"]
#   # )
# end

