# == Schema Information
#
# Table name: supporters
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Supporter, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:user) }
  end
end
