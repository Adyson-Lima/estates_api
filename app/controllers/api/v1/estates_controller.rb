class Api::V1::EstatesController < ApplicationController

  before_action :set_estate, only: %i[show] # show update destroy

  def index
    @estates = Estate.all 
    render json: @estates
  end

  def show
    render json: @estate
  end

private

def set_estate
  @estate = Estate.find(params[:id])
end

def estate_params
  params.require(:estate).permit(:name, :capital)
end

end