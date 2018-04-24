class CreateUserAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :user_announcements do |t|
      t.references :user
      t.references :announcement

      t.timestamps
    end
  end
end
