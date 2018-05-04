class AddLocationToAnnouncement < ActiveRecord::Migration[5.1]
  def change
    add_reference :announcements, :location, foreign_key: true
  end
end
