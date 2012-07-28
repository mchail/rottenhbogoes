class AddLinkToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :link, :text
  end
end
