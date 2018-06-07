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

require 'rails_helper'

RSpec.describe Announcement, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:status) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:announcement_supporters) }
    it { is_expected.to have_many(:announcement_locations) }
    it { is_expected.to have_many(:locations).through(:announcement_locations) }
  end

  context 'enums' do
    it { is_expected.to define_enum_for(:status).with(%i(waiting_for_confirmation waiting_for_help helping done)) }
    it { is_expected.to define_enum_for(:help_type).with(%i(take_a_vet require_home require_money other_helps)) }
    it { is_expected.to define_enum_for(:animal_type).with(%i(dog cat other)) }
    it { is_expected.to define_enum_for(:urgent_type).with(%i(urgent normal not_urgent)) }
  end
end
