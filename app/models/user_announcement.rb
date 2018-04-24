# == Schema Information
#
# Table name: user_announcements
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  announcement_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class UserAnnouncement < ApplicationRecord
  belongs_to :user
  belongs_to :announcement
end
