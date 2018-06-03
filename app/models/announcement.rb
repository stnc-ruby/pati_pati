# == Schema Information
#
# Table name: announcements
#
#  title       :string
#  description :text
#  animal_type :integer
#  help_status :integer
#  help_type   :integer
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  id          :uuid
#  user_id     :uuid
#  location_id :uuid
#

class Announcement < ApplicationRecord

  validates :title, :help_status, presence: true

  belongs_to :user
  belongs_to :location

  enum status: %i(waiting_for_confirmation waiting_for_help helping done) #onay için bekliyor, yardım bekliyor, yardım ediliyor, kapandı
  enum help_type: %i(take_a_vet require_home require_money other_helps)
  enum animal_type: %i(dog cat other)
  enum urgent_type: %i(urgent normal not_urgent)
end
