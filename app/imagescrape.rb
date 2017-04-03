require 'nokogiri'
require 'open-uri'

url = 'https://marketplace.asos.com/boutiques/independent-label'
doc = Nokogiri::HTML(open(url))
    # opens URL and searches for all forms of images, maps them and gets the correct absolute URL
doc.traverse do | el |
	[el[:src], el[:href]].grep(/\.(gif|jpg|png)$/i).map{ |l| URI.join(url, l).to_s}.each do |link|
		File.open(File.basename(link), 'wb') { |f| f << open(link, 'rb').read }
	# opens file and saves it as the name from scraped content
	# doesn't differentiate between selectors, just grabs images
	end
end
