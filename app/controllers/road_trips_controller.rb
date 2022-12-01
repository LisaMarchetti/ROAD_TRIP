class RoadTripsController < ApplicationController
  def index
    @road_trips = RoadTrip.all
  end

  def show
    @road_trip = RoadTrip.find(params[:id])
  end

  def new
    @road_trip = RoadTrip.new
    @point = Point.new
  end

  def create
    @road_trip = RoadTrip.new(road_trip_params)
    @road_trip.user = current_user
    if @road_trip.save
      redirect_to road_trip_path(@road_trip)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def search
    # if params[:query].present?
      # @points = Point.where(city: params[:query]) # ou @road_trips = RoadTrip.points.where(city: params[:query])
      # @points = Point.where(start_date: params[:query]) # @road_trips = RoadTrip.points.where(start_date: params[:query])
    # else
      # @road_trips = RoadTrip.all
    # end
  end

  private

  def road_trip_params
    params.require(:road_trip).permit(:photo, :title, :description, :native_language, :other_language, :work, :number_participants)
  end
end
