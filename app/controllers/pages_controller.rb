require 'nokogiri'
require 'open-uri'

class PagesController < ApplicationController
    def about
        #used to change the routing to /about
    end
   
  def label 
     # Nokogiri web scrape content from asos
     url = "https://marketplace.asos.com/boutiques/independent-label"

     doc = Nokogiri::HTML(open(url))
    # opens URL
     label = doc.css('#boutiqueList')
    # creates label with the correct css selector
     @label = label.css('#boutiqueList img').map { |l|  l.attr('src') }
     @title = label.css("#boutiqueList .notranslate").map { |o|  o.text }
     # saves all scraped content and maps it into an array
 end
    
end
