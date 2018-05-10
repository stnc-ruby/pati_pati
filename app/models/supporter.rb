# == Schema Information
#
# Table name: supporters
#
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  id         :uuid
#  user_id    :uuid
#

class Supporter < ApplicationRecord
  belongs_to :user
end
