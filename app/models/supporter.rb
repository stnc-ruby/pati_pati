# == Schema Information
#
# Table name: supporters
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Supporter < ApplicationRecord
  belongs_to :user
end
