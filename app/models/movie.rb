class Movie < ActiveRecord::Base
  attr_accessible :description, :expiration, :hbogo_id, :imdb_id, :title, :rating, :introduced, :runtime, :quality, :year, :genre, :image_url, :link

  has_many :rt_movies
end
