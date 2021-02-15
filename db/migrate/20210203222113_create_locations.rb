class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :restOrBar
      t.string :restType
      t.float :longitude
      t.float :latitude
      t.string :imgUrl 
      t.string :website 
      t.string :hours
      t.string :menu
      t.timestamps
    end
  end
end
