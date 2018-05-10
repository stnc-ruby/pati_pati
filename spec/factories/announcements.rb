# == Schema Information
#
# Table name: announcements
#
#  title       :string
#  description :text
#  animal_type :integer
#  help_status :integer
#  help_type   :integer
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  id          :uuid
#  user_id     :uuid
#  location_id :uuid
#

FactoryBot.define do
  factory :announcement do
    user_id 1
    location do
      FactoryBot.create(:location)
    end
  end
end
