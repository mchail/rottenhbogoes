class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :hbogo_id
      t.integer :imdb_id
      t.string :title
      t.string :description
      t.date :expiration

      t.timestamps
    end
  end
end
