# == Schema Information
#
# Table name: supporters
#
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  id         :uuid
#  user_id    :uuid
#

FactoryBot.define do
  factory :supporter do
    user_id 1
  end
end
