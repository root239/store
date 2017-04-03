require 'nokogiri'
require 'open-uri'

url = "https://marketplace.asos.com/boutiques/independent-label"

#TESTING FOR WEB SCRAPERS
doc = Nokogiri::HTML(open(url))

@label = doc.css("#boutiqueList")

 
 @label.css("#boutiqueList img").each do |l|
     p l
end
 src  = html.at('.profilePic img')['src']
File.open("foo.png", "wb") do |f|
  f.write(open(src).read)
end
 
 
 #@label.css("#boutiqueList .notranslate").each do |o|
   #  p o.text
#end
 