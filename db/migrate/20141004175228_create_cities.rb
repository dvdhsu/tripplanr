class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :address
      t.float :latitutde
      t.float :longitude

      t.timestamps
    end
  end
end
