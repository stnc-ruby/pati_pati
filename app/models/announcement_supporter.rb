# == Schema Information
#
# Table name: announcement_supporters
#
#  id              :uuid             not null, primary key
#  user_id         :uuid
#  announcement_id :uuid
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class AnnouncementSupporter < ApplicationRecord
  belongs_to :announcement
  belongs_to :user
end
