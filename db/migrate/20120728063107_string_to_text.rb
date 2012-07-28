class StringToText < ActiveRecord::Migration
  def up
  	change_column :movies, :title, :text
  	change_column :movies, :description, :text
  	change_column :movies, :image_url, :text
  	change_column :movies, :rating, :text
  	change_column :movies, :quality, :text
  	change_column :movies, :genre, :text

  	change_column :rt_movies, :title, :text
  	change_column :rt_movies, :description, :text
  	change_column :rt_movies, :rating, :text
  	change_column :rt_movies, :review, :text
  	change_column :rt_movies, :image_url, :text
  end

  def down
  	change_column :movies, :title, :string
  	change_column :movies, :description, :string
  	change_column :movies, :image_url, :string
  	change_column :movies, :rating, :string
  	change_column :movies, :quality, :string
  	change_column :movies, :genre, :string

  	change_column :rt_movies, :title, :string
  	change_column :rt_movies, :description, :string
  	change_column :rt_movies, :rating, :string
  	change_column :rt_movies, :review, :string
  	change_column :rt_movies, :image_url, :string
  end
end
