class CreateUserLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :user_locations, id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
      t.uuid :user_id
      t.uuid :location_id

      t.timestamps
    end
  end
end
