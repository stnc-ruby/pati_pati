# == Schema Information
#
# Table name: user_locations
#
#  id          :integer          not null, primary key
#  name        :string
#  latitude_x  :string
#  longitude_y :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class UserLocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
