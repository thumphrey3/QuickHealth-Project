class Clinician < ActiveRecord::Base
	has_many :cases
	has_and_belongs_to_many :locations
end
