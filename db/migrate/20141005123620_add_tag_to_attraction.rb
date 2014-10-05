class AddTagToAttraction < ActiveRecord::Migration
  def change
    add_column :attractions, :tag, :string
  end
end
