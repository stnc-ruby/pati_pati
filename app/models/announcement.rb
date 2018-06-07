# == Schema Information
#
# Table name: announcements
#
#  id          :uuid             not null, primary key
#  title       :string
#  description :text
#  status      :integer
#  help_type   :integer
#  animal_type :integer
#  urgent_type :integer
#  user_id     :uuid
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Announcement < ApplicationRecord

  validates :title, :status, presence: true

  belongs_to :user
  has_many :announcement_supporters

  has_many :announcement_locations
  has_many :locations, through: :announcement_locations

  enum status: %i(waiting_for_confirmation waiting_for_help helping done) #onay için bekliyor, yardım bekliyor, yardım ediliyor, kapandı
  enum help_type: %i(take_a_vet require_home require_money other_helps)
  enum animal_type: %i(dog cat other)
  enum urgent_type: %i(urgent normal not_urgent)
end
