# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  first_name            :string
#  last_name             :string
#  email                 :string
#  phone_number          :string
#  user_name             :string
#  password              :string
#  location              :string
#  location_json         :string
#  device_id             :integer
#  user_type             :integer
#  registered_date       :datetime
#  is_personal_confirm   :boolean
#  personal_confirm_date :datetime
#  is_active             :boolean          default(FALSE)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
