class Case < ActiveRecord::Base
	belongs_to :patient
	belongs_to :clinician
	has_and_belongs_to_many :syndromes
end
