# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string
#  last_name              :string
#  phone_number           :string
#  location               :string
#  location_json          :string
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
#

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
  end

  context 'associations' do
    it { is_expected.to have_many(:announcements) }
    it { is_expected.to have_many(:user_locations) }
    it { is_expected.to have_many(:locations).through(:user_locations) }
    it { is_expected.to have_many(:supporters)}
  end

  context 'enums' do
    it { is_expected.to define_enum_for(:type).with(%i(animal_lover veterinarian)) }
  end
end
