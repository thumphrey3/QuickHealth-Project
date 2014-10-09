class CasesController < ApplicationController
  before_action :set_case, only: [:show]

  def index
    @cases = Case.all
  end

  def show
  end
  
  private 
  
  def set_case
    @case = Case.find params[:id]
  end
end
