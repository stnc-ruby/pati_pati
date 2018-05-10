# == Schema Information
#
# Table name: locations
#
#  title       :string
#  longitude_x :string
#  latitude_y  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  id          :uuid
#

require 'rails_helper'

RSpec.describe Location, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:users).through(:user_locations) }
    it { is_expected.to have_many(:user_locations) }
    it { is_expected.to have_many(:announcements) }
  end
end
