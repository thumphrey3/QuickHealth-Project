class Patient < ActiveRecord::Base
	belongs_to :household
	has_many :cases
end
