class AddRatingToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :rating, :float
    add_column :attractions, :image_url, :string
  end
end
