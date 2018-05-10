# == Schema Information
#
# Table name: users
#
#  first_name             :string
#  last_name              :string
#  phone_number           :string
#  device_id              :integer
#  type                   :integer
#  is_personal_confirm    :boolean
#  personal_confirm_date  :datetime
#  is_active              :boolean          default(FALSE)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  id                     :uuid
#  location_id            :uuid
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_locations
  has_many :locations, through: :user_locations

  has_many :announcements
  has_many :supporters

  enum type: %i(animal_lover veterinarian)

  validates :first_name, :last_name, :email, presence: true
  # validates :first_name, :last_name, :email, :user_name, :location, :is_personal_confirm, :personal_confirm_date, :is_active, presence: true
end
