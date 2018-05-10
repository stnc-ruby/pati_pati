# == Schema Information
#
# Table name: user_locations
#
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  id          :uuid
#  user_id     :uuid
#  location_id :uuid
#

class UserLocation < ApplicationRecord
  belongs_to :user
  belongs_to :location
end
