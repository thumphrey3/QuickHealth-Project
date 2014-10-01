class Location < ActiveRecord::Base
	has_many :households
	has_and_belongs_to_many :clinicians
end
