class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :title
      t.string :body
      t.integer :time
      t.integer :cost_cents
      t.references :city, index: true

      t.timestamps
    end
  end
end
