class Api::V1::EstatesController < ApplicationController

  before_action :set_estate, only: %i[show] # show update destroy

  def index
    @estates = Estate.all 
    render json: @estates
  end

  def show
    render json: @estate
  end

  def create
    @estate = Estate.new(estate_params)
    if @estate.save
      render json: @estate, status: :created, location: api_v1_estate_url(@estate)
    else
      render json: @estate.errors, status: :unprocessable_entity
    end
  end

private

def set_estate
  @estate = Estate.find(params[:id])
end

def estate_params
  params.require(:estate).permit(:name, :capital)
end

end