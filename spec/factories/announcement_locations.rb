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

FactoryBot.define do
  factory :announcement_location do
    
  end
end
