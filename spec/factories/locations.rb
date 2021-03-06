# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  title      :string
#  longitude  :string
#  latitude   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :location do
    title 'Work'
    longitude '41.015137'
    latitude '28.979530'
  end
end
