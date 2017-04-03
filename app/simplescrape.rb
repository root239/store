PAGE = "https://marketplace.asos.com/boutiques/independent-label"
require 'nokogiri'
require 'open-uri'

# only saves the first image with the correct selector

html = Nokogiri.HTML(open(PAGE))
src  = html.at('#boutiqueList img')['src']
# creates and names file
File.open("foo.png", "wb") do |f|
    #image is read into file and saved
  f.write(open(src).read)
end