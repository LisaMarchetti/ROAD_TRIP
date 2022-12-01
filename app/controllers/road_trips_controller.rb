class RoadTripsController < ApplicationController
  def index
    if params[:destination] && params[:departure] != ""
      @road_trips = RoadTrip.joins(:points).where('points.city' => params[:destination])
                            .or(RoadTrip.joins(:points).where('points.country' => params[:destination]))
                            .or(RoadTrip.joins(:points).where('points.continent' => params[:destination]))
                            .and(RoadTrip.joins(:points).where('points.start_date' => params[:departure]))
    else
      @road_trips = RoadTrip.all
    end
  end

  def show
    @road_trip = RoadTrip.find(params[:id])
  end

  # def show
  #   @road_trips = RoadTrip.find(params[:id])
  #   @points = Point.new()
  #   @markers =
  #   [
  #     {
  #       lat: @rocket.geocode[0],
  #       lng: @rocket.geocode[1]
  #     }
  #   ]
  # end

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

     

  private

  def road_trip_params
    params.require(:road_trip).permit(:photo, :title, :description, :native_language, :other_language, :work, :number_participants)
  end

end
