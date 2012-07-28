class HbogoScraper

	def self.perform
		raw_string = RestClient.get "http://catalog.lv3.hbogo.com/apps/mediacatalog/rest/productBrowseService/HBO/category/INDB487"
		xml = Nokogiri.XML(raw_string)

		movies = xml.xpath('///featureResponse')

		movies.each do |movie|
			Movie.create(
				title: movie.xpath('title').first.content,
				description: movie.xpath('shortSummary').first.content,
				expiration: movie.xpath('endDate').first.content,
				introduced: movie.xpath('startDate').first.content,
				year: movie.xpath('year').first.content,
				rating: movie.xpath('//rating').first.content,
				image_url: movie.xpath('imageResponses/resourceUrl').first.content,
				runtime: movie.xpath('//runtime').first.content,
				quality: movie.xpath('//videoType').first.content,
				genre: movie.xpath('primaryGenre').first.content,
				link: "http://www.hbogo.com/#home/video&assetID=" + movie.xpath('TKey').first.content + "?videoMode=embeddedVideo?showSpecialFeatures=false/"
			)
		end
	end

end