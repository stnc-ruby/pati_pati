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

require 'rails_helper'

RSpec.describe Announcement, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:title) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:location) }
  end

  context 'enums' do
    it { is_expected.to define_enum_for(:status).with(%i(waiting_for_confirmation waiting_for_help helping done)) }
    it { is_expected.to define_enum_for(:help_type).with(%i(take_a_vet require_home require_money other)) }
    it { is_expected.to define_enum_for(:animal_type).with(%i(dog cat other)) }
    it { is_expected.to define_enum_for(:urgent_type).with(%i(urgent normal not_urgent)) }
  end
end
