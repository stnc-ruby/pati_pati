# == Schema Information
#
# Table name: announcement_locations
#
#  id              :integer          not null, primary key
#  announcement_id :uuid
#  location_id     :uuid
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe AnnouncementLocation, type: :model do
  it { is_expected.to belong_to(:announcement) }
  it { is_expected.to belong_to(:location) }
end
