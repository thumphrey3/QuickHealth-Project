class Household < ActiveRecord::Base
	has_many :patients

	validates :name, :mobile_number, presence: true 
end
