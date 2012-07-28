class AddAttributesToMovie < ActiveRecord::Migration
  def change
  	add_column :movies, :rating, :string
  	add_column :movies, :introduced, :date
  	add_column :movies, :runtime, :integer
  	add_column :movies, :quality, :string
  	add_column :movies, :year, :integer
  	add_column :movies, :genre, :string
  end
end
