# == Schema Information
#
# Table name: locations
#
#  id          :uuid             not null, primary key
#  title       :string
#  longitude_x :float
#  latitude_y  :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Location < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def address
    [street, city, state, country].compact.join(', ')
  end

  has_many :user_locations
  has_many :users, through: :user_locations

  has_many :announcement_locations
  has_many :announcements, through: :announcement_locations

end
