class CreateRtMovies < ActiveRecord::Migration
  def change
    create_table :rt_movies do |t|
      t.string :title
      t.string :description
      t.string :rating
      t.integer :runtime
      t.integer :year
      t.integer :rtid
      t.string :review
      t.integer :critics_rating
      t.integer :audience_rating
      t.string :image_url

      t.timestamps
    end
  end
end
