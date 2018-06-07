# == Schema Information
#
# Table name: announcements
#
#  id          :uuid             not null, primary key
#  title       :string
#  description :text
#  status      :integer
#  help_type   :integer
#  animal_type :integer
#  urgent_type :integer
#  user_id     :uuid
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :announcement do
    user_id 1
    location do
      FactoryBot.create(:location)
    end
    status 3
  end
end
