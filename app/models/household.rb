class Household < ActiveRecord::Base
	has_many :patients
	belongs_to :location
end
