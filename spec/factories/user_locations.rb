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

FactoryBot.define do
  factory :user_location do
    user_id 1
    location_id 1
  end
end
