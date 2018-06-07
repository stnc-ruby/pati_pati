# == Schema Information
#
# Table name: announcement_supporters
#
#  id              :uuid             not null, primary key
#  user_id         :uuid
#  announcement_id :uuid
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :announcement_supporter do
    user_id 1
    announcement_id 1
  end
end
