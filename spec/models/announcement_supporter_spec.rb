# == Schema Information
#
# Table name: announcement_supporters
#
#  id              :uuid             not null, primary key
#  user_id         :uuid
#  announcement_id :uuid
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe AnnouncementSupporter, type: :model do
  it { is_expected.to belong_to(:announcement) }
  it { is_expected.to belong_to(:user) }
end
