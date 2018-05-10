class ChangeUuidsToIds < ActiveRecord::Migration[5.1]
  # Remove ids
  def change
    remove_column :active_admin_comments, :id
    rename_column :active_admin_comments, :id_uuid, :id

    remove_column :admin_users, :id
    rename_column :admin_users, :id_uuid, :id

    remove_column :announcements, :id
    rename_column :announcements, :id_uuid, :id

    remove_column :supporters, :id
    rename_column :supporters, :id_uuid, :id

    remove_column :user_locations, :id
    rename_column :user_locations, :id_uuid, :id

    remove_column :users, :id
    rename_column :users, :id_uuid, :id
  end
end
