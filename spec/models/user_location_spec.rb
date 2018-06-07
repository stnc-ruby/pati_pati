# == Schema Information
#
# Table name: user_locations
#
#  id          :uuid             not null, primary key
#  user_id     :uuid
#  location_id :uuid
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe UserLocation, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:location) }
end
