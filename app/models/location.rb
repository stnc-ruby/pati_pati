# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  title      :string
#  longitude  :string
#  latitude   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ApplicationRecord
end