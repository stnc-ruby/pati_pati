class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'uuid-ossp' unless extension_enabled?('uuid-ossp')
    create_table :users, id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.integer :device_id
      t.boolean :is_personal_confirm
      t.datetime :personal_confirm_date
      t.boolean :is_active, default: false
      t.boolean :is_veterinarian, default: false

      t.timestamps
    end
  end
end
