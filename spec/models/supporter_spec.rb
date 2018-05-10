# == Schema Information
#
# Table name: supporters
#
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  id         :uuid
#  user_id    :uuid
#

require 'rails_helper'

RSpec.describe Supporter, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:user) }
  end
end
