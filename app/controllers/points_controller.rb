class PointsController < ApplicationController
  def create
    @point = Point.new(point_params)
    if @point.save
      redirect_to road_trip_path(@point)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def point_params
    params.require(:point).permit(:latitude, :longitude, :city, :country, :continent, :start_date, :end_date, :description, :budget_day, :local_language, :currency, :housing_type, :visits_activities)
  end
end
