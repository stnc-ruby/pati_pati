class AddUuids < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'uuid-ossp' unless extension_enabled?('uuid-ossp')

    change_table "active_admin_comments" do |t|
      t.uuid :id_uuid, default: 'uuid_generate_v4()'
      t.uuid :resource_id_uuid #uuid tipinde resource_id_uuid yarattım
      t.uuid :author_id_uuid
     end

    # rename_column :table_name, :old_column, :new_column

    #varolan resource_id yi kaldırdım
    remove_column :active_admin_comments, :resource_id
    #üstte yarattığım resource_id_uuid nin ismini resource_id olarak değiştirdim
    rename_column :active_admin_comments, :resource_id_uuid, :resource_id
    remove_column :active_admin_comments, :author_id
    rename_column :active_admin_comments, :author_id_uuid, :author_id

    change_table "admin_users" do |t|
      t.uuid :id_uuid, default: 'uuid_generate_v4()' #uuid generate ediyor
    end

    change_table "announcements" do |t|
      t.uuid :id_uuid, default: 'uuid_generate_v4()'
      t.uuid :user_id_uuid
      t.uuid :location_id_uuid
    end

    remove_column :announcements, :user_id
    rename_column :announcements, :user_id_uuid, :user_id
    remove_column :announcements, :location_id
    rename_column :announcements, :location_id_uuid, :location_id

    change_table "locations" do |t|
      t.uuid :id_uuid, default: 'uuid_generate_v4()'
    end

    change_table "supporters" do |t|
      t.uuid :id_uuid, default: 'uuid_generate_v4()'
      t.uuid :user_id_uuid
    end

    remove_column :supporters, :user_id
    rename_column :supporters, :user_id_uuid, :user_id

    change_table "user_locations" do |t|
      t.uuid :id_uuid, default: 'uuid_generate_v4()'
      t.uuid :user_id_uuid
      t.uuid :location_id_uuid
    end

    remove_column :user_locations, :user_id
    rename_column :user_locations, :user_id_uuid, :user_id
    remove_column :user_locations, :location_id
    rename_column :user_locations, :location_id_uuid, :location_id

    change_table "users" do |t|
      t.uuid :id_uuid, default: 'uuid_generate_v4()'
      t.uuid :location_id_uuid
    end

    remove_column :users, :location_id
    rename_column :users, :location_id_uuid, :location_id
  end
end