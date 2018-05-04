# == Schema Information
#
# Table name: user_locations
#
#  id          :integer          not null, primary key
#  name        :string
#  latitude_x  :string
#  longitude_y :string
#  user_id     :integer
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :user_location do
    user_id 1
    location_id 1
  end
end
