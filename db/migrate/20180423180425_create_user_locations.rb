class CreateUserLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :user_locations do |t|
      t.string :name
      t.string :latitude_x
      t.string :longitude_y
      t.references :user

      t.timestamps
    end
  end
end
