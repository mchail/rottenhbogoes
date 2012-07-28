class RottenTomatoesSearcher

	def self.perform
		Movie.all.each do |movie|
			query = movie.title.split(" ").join('+')
			response = RestClient.get "http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=t7fqrh5wc5nwcjenhvjstse9&q=#{query}&page_limit=1"
			parsed = JSON.parse(response)
			parsed['movies'].each do |rt|
				movie.rt_movies.create(
					title: rt['title'],
					rtid: rt['id'],
					year: rt['year'],
					audience_rating: rt['ratings']['audience_score'],
					critics_rating: rt['ratings']['critics_score'],
					description: rt['synopsis'],
					image_url: rt['posters']['thumbnail'],
					rating: rt['mpaa_rating'],
					review: rt['critics_consensus'],
					runtime: rt['runtime']
				)
			end
		end
	end

end