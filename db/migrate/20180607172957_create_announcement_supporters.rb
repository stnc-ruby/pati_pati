class CreateAnnouncementSupporters < ActiveRecord::Migration[5.1]
  def change
    create_table :announcement_supporters, id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
      t.uuid :user_id
      t.uuid :announcement_id

      t.timestamps
    end
  end
end
