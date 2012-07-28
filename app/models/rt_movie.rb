class RtMovie < ActiveRecord::Base
  attr_accessible :audience_rating, :critics_rating, :description, :image_url, :rating, :review, :rtid, :runtime, :title, :year

  belongs_to :movie
end
