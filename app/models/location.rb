# == Schema Information
#
# Table name: locations
#
#  id           :integer          not null, primary key
#  created_at   :datetime
#  updated_at   :datetime
#  name         :string(255)
#  province     :string(255)
#  country      :string(255)
#  household_id :integer
#

class Location < ActiveRecord::Base
	#has_many :households
	has_and_belongs_to_many :clinicians
end
