# == Schema Information
#
# Table name: user_locations
#
#  name        :string
#  latitude_x  :string
#  longitude_y :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  id          :uuid
#  user_id     :uuid
#  location_id :uuid
#

require 'rails_helper'

RSpec.describe UserLocation, type: :model do
  context 'associations' do    
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:location) }
  end
end
