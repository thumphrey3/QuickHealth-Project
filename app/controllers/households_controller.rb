class HouseholdsController < ApplicationController
	before_action :set_household, only: [:update, :edit, :show]

	def index
		@households = Household.all
		if params[:q]
      		@household = Household.where("name LIKE ?", "%#{params[:q]}%").first
      		render 'show'
    	else
      		@households = Household.all
    	end
	end

	def show
	end

	def new
		@household = Household.new
	end

	def create
		@household = Household.new household_params
    	if @patient.save
      		redirect_to @household, notice: "Household was saved."
    	else
      		render 'new'
    	end
	end

	def edit
	end

	def update
		if @household.update(household_params)
      		redirect_to @household, notice: "Household information was updated!"
    	else
     	 	render 'edit'
    	end
	end 
	
	private
	def set_household
   		@household = Household.find params[:id]
	end

	def household_params
		params.require(:household).permit(:name, :mobile_number, :location, :email)
	end
end
