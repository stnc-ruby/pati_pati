# == Schema Information
#
# Table name: announcement_locations
#
#  id              :integer          not null, primary key
#  announcement_id :uuid
#  location_id     :uuid
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class AnnouncementLocation < ApplicationRecord
  belongs_to :announcement
  belongs_to :location
end
