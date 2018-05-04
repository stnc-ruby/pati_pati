# == Schema Information
#
# Table name: supporters
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :supporter do
    user_id 1
  end
end
