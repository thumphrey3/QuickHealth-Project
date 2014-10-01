class PatientsController < ApplicationController
	
	def index
	end

	def new
		@patient = Patient.new
	end

	def new_household
	end
end
