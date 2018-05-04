# == Schema Information
#
# Table name: announcements
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  animal_type :integer
#  help_status :integer
#  help_type   :integer
#  status      :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#

class Announcement < ApplicationRecord

  validates :title, :help_status, presence: true

  belongs_to :user
  belongs_to :location

  enum animal_type: %i(dog cat other)
  enum help_status: %i(urgent_waiting_for_help waiting_for_help being_help)
  enum help_type: %i(take_a_vet require_home require_money other_helps)
  enum status: %i(waiting_for_approval approved being_on_help done)
end
