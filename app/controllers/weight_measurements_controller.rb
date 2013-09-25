class WeightMeasurementsController < ApplicationController
  respond_to :json

  def index
    respond_with WeightMeasurement.all.order(:created_at)
  end

  def show
    respond_with WeightMeasurement.find(params[:id])
  end

  def create
    respond_with Entry.create(measurement_params)
  end

  def update
    respond_with Entry.update(params[:id], params[:entry])
  end

  def destroy
    respond_with Entry.destroy(params[:id])
  end

  private

  def measurement_params
    params.require(:weight_measurement).permit(:value)
  end
end
