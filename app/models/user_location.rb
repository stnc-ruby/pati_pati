# == Schema Information
#
# Table name: user_locations
#
#  id          :integer          not null, primary key
#  name        :string
#  latitude_x  :string
#  longitude_y :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class UserLocation < ApplicationRecord
  belongs_to :user
end
