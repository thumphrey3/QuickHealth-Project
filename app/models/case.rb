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
	has_and_belongs_to_many :syndromes
end
