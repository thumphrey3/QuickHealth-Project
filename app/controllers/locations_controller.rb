class LocationsController < ApplicationController
  before_action :set_location, only: [:update, :edit, :show]

    def index
      @locations = Location.all
      if params[:search]
        @location = Location.search(params[:search])
        render 'show'
      else 
        @locations = Location.all
      end
    end

private
  def set_location
      @location = Location.find params[:id]
  end

  def location_params
    params.require(:location).permit(:address, :)
  end

end
