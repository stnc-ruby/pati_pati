# == Schema Information
#
# Table name: locations
#
#  title       :string
#  longitude_x :string
#  latitude_y  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  id          :uuid
#

FactoryBot.define do
  factory :location do
    title 'Work'
    longitude '41.015137'
    latitude '28.979530'
  end
end
