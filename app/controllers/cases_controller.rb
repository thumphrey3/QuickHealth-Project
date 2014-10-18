class CasesController < ApplicationController
  before_action :set_case, only: [:update, :edit, :show]

  def index
    @cases = Case.all
  end

  def show
  end
  
  def edit
  end

  def update
    if @case.update(case_params)
          redirect_to @case, notice: "Case information was updated!"
      else
        render 'edit'
      end
  end 

  private 
  
  def set_case
    @case = Case.find params[:id]
  end

  def case_params 
    params.require(:case).permit(:status, :notes, :appointment)
  end
end
