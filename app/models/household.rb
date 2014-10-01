class Household < ActiveRecord::Base
	has_many :patients
	belongs_to :location

	validates :name, :mobile_number, presence: true 
end
