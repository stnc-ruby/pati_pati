class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :title
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
