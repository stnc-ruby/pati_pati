# == Schema Information
#
# Table name: user_locations
#
#  id          :integer          not null, primary key
#  name        :string
#  latitude_x  :string
#  longitude_y :string
#  user_id     :integer
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe UserLocation, type: :model do
  context 'associations' do    
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:location) }
  end
end
