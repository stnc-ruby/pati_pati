class CreateAnnouncementLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :announcement_locations do |t|
      t.uuid :announcement_id
      t.uuid :location_id

      t.timestamps
    end
  end
end
