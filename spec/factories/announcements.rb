# == Schema Information
#
# Table name: announcements
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  animal_type :integer
#  help_status :integer
#  help_type   :integer
#  status      :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#

FactoryBot.define do
  factory :announcement do
    user_id 1
    location do
      FactoryBot.create(:location)
    end
  end
end
