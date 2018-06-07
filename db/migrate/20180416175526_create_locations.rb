class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'uuid-ossp' unless extension_enabled?('uuid-ossp')
    create_table :locations, id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
      t.string :title
      t.float :latitude
      t.float :longitude
      t.string :street
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
