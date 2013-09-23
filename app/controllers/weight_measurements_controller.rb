class WeightMeasurementsController < ApplicationController
  def index
    render json: WeightMeasurements.all
  end

  def show
    render json: WeightMeasurements.find(params[:id])
  end
end
