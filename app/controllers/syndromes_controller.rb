class SyndromesController < ApplicationController
  before_action :set_syndrome, only: [:update, :edit, :show]

  def index
  end

  def show
  end

  def new
    @syndrome = Syndrome.new
  end

  def create
    @syndrome = Syndrome.new syndrome_params
      if @syndrome.save
        redirect_to @syndrome, notice: "Syndrome added."
      else
        render 'new'
      end
  end

  def edit
  end

  def update
   if @syndrome.update(syndrome_params)
      redirect_to @syndrome, notice: "Syndrome information updated."
    else
      render 'edit'
    end
  end

  private
  def set_syndrome
    @syndrome = Syndrome.find params[:id]
  end

  def syndrome_params
    params.require(:syndrome).permit(:name, :description, :text_code, :severity_score, :instruction)
  end
end
