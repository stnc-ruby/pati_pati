class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :title
      t.string :longitude_x
      t.string :latitude_y

      t.timestamps
    end
  end
end
