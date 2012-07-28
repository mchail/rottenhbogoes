desc "This task wipes all movie data and refetches it"
task :rebuild_movies => :environment do
	Movie.delete_all
	RtMovie.delete_all
	HbogoScraper.perform
	RottenTomatoesSearcher.perform
end
