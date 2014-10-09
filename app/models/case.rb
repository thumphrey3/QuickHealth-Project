# == Schema Information
#
# Table name: cases
#
#  id            :integer          not null, primary key
#  created_at    :datetime
#  updated_at    :datetime
#  urgency_level :integer
#  status        :string(255)
#  notes         :text
#  patient_id    :integer
#

class Case < ActiveRecord::Base
	belongs_to :patient
	belongs_to :clinician
  
	has_many :case_syndromes
  has_many :syndromes, :through => :case_syndromes 
end
