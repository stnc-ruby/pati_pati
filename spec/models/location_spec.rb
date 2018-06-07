# == Schema Information
#
# Table name: locations
#
#  id          :uuid             not null, primary key
#  title       :string
#  longitude_x :float
#  latitude_y  :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Location, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:users).through(:user_locations) }
    it { is_expected.to have_many(:user_locations) }
    it { is_expected.to have_many(:announcements).through(:announcement_locations) }
    it { is_expected.to have_many(:announcement_locations) }
  end
end
