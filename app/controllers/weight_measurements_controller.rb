class WeightMeasurementsController < ApplicationController
  def index
    render json: WeightMeasurement.all
  end

  def show
    render json: WeightMeasurement.find(params[:id])
  end
end
