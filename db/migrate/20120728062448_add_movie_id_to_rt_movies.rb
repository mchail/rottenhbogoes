class AddMovieIdToRtMovies < ActiveRecord::Migration
  def change
    add_column :rt_movies, :movie_id, :integer
  end
end
