class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'uuid-ossp' unless extension_enabled?('uuid-ossp')
    create_table :announcements, id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.integer :help_type
      t.integer :animal_type
      t.integer :urgent_type
      t.uuid :user_id

      t.timestamps
    end
  end
end
