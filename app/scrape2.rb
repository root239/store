require 'nokogiri'
require 'open-uri'

#scrapes content of site and serves them into an array
#was previously used to print to terminal to check that it was working

url = "https://marketplace.asos.com/boutiques/independent-label"

doc = Nokogiri::HTML(open(url))
 
label = doc.css('#boutiqueList')

@label = label.css('#boutiqueList img').map { |l| p l.attr('src') }
@title = label.css("#boutiqueList .notranslate").map { |o| p o }
   
   
   
  
    


 