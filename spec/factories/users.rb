# == Schema Information
#
# Table name: users
#
#  first_name             :string
#  last_name              :string
#  phone_number           :string
#  device_id              :integer
#  type                   :integer
#  is_personal_confirm    :boolean
#  personal_confirm_date  :datetime
#  is_active              :boolean          default(FALSE)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  id                     :uuid
#  location_id            :uuid
#

FactoryBot.define do
  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.email
  end
end
