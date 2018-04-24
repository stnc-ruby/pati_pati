# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  first_name            :string
#  last_name             :string
#  email                 :string
#  phone_number          :string
#  user_name             :string
#  password              :string
#  location              :string
#  location_json         :string
#  device_id             :integer
#  user_type             :integer
#  registered_date       :datetime
#  is_personal_confirm   :boolean
#  personal_confirm_date :datetime
#  is_active             :boolean          default(FALSE)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_announcement
  has_many :locations

  enum user_type: %i(animal_lover veterinarian)

  validates :first_name, :last_name, :email, :user_name, :location, :is_personal_confirm, :personal_confirm_date, :is_active, presence: true
end
