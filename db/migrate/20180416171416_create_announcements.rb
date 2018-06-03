class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.integer :help_type
      t.integer :animal_type
      t.integer :urgent_type
      t.references :user

      t.timestamps
    end
  end
end
