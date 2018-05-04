class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :description
      t.integer :animal_type
      t.integer :help_status
      t.integer :help_type
      t.integer :status
      t.references :user

      t.timestamps
    end
  end
end
