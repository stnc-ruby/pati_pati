# == Schema Information
#
# Table name: user_announcements
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  announcement_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserAnnouncementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
