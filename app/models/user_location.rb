# == Schema Information
#
# Table name: user_locations
#
#  id          :uuid             not null, primary key
#  user_id     :uuid
#  location_id :uuid
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class UserLocation < ApplicationRecord
  belongs_to :user
  belongs_to :location
end
