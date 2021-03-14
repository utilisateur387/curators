require 'open-uri'
require 'nokogiri'
require 'httparty'

# url = "https://en.wikipedia.org/wiki/List_of_painters_by_name_beginning_with_%22A%22"
def replace_chars(artist_name)
  new_title = artist_name.gsub(/[àáâãäåāă]/, "a")
  new_title = new_title.gsub(/[ÀÁÂÄÆÃÅĀ]/, "A")
  new_title = new_title.gsub(/[ôöòóøōõő]/, "o")
  new_title = new_title.gsub(/[ð]/, "d")
  new_title = new_title.gsub(/[ÔÖÒÓØŌÕ]/, "O")
  new_title = new_title.gsub(/[èéêëēėęě]/, "e")
  new_title = new_title.gsub(/[ÈÉÊËĒĖĘ]/, "E")
  new_title = new_title.gsub(/[îïíīįì]/, "i")
  new_title = new_title.gsub(/[ÎÏÍĪĮÌ]/, "i")
  new_title = new_title.gsub(/[śš]/, "s")
  new_title = new_title.gsub(/[ŚŠ]/, "S")
  new_title = new_title.gsub(/[çćč]/, "c")
  new_title = new_title.gsub(/[ÇĆČ]/, "C")
  new_title = new_title.gsub(/[ÿ]/, "y")
  new_title = new_title.gsub(/[Ÿ]/, "Y")
  new_title = new_title.gsub(/[ûüùúūů]/, "u")
  new_title = new_title.gsub(/[ÛÜÙÚŪ]/, "U")
  new_title = new_title.gsub(/[žźż]/, "z")
  new_title = new_title.gsub(/[ŽŹŻ]/, "Z")
  new_title = new_title.gsub(/[ñń]/, "n")
  new_title = new_title.gsub(/[ÑŃ]/, "N")
  new_title = new_title.gsub(/[ł]/, "l")
  new_title = new_title.gsub(/[Ł]/, "L")
  new_title = new_title.gsub(/\s\(.+\)/, "")
  new_title
end

def scrap_wiki
    puts "Start"
  # alphabet = ("A".."Z").to_a
  # alphabet.each do |letter|
    url = "https://en.wikipedia.org/wiki/List_of_painters_by_name_beginning_with_%22A%22"

    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
    html_doc.css('.div-col').css('li').each do |element|
      title = element.element_children.first.attribute('title').text.strip
      # p title
      full_name = replace_chars(title)
      link = element.element_children.first.attribute('href')

      url = "https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=#{full_name}"
      response = HTTParty.get(url)
      page_id = response["query"]["pages"].keys[0]
      bio = response["query"]["pages"][page_id]["extract"]

      if bio && bio.include?("may refer to")
        puts "SKIP: May refer to..."
      elsif bio.empty?
        puts "SKIP: Empty bio"
      else
        artist = Artist.new(name: full_name, bio: bio, url: "http://wikipedia.org#{link}")
        # artist.save!
        puts artist.name
        puts artist.bio
        puts artist.url
      end

    end
  # end
  puts "End"
end

scrap_wiki
