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

FactoryBot.define do
  factory :user_location do
    user_id 1
    location_id 1
  end
end
