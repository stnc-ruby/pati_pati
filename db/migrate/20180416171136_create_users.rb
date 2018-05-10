class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.integer :location_id
      t.integer :device_id
      t.integer :type
      t.boolean :is_personal_confirm
      t.datetime :personal_confirm_date
      t.boolean :is_active, default: false

      t.timestamps
    end
  end
end
