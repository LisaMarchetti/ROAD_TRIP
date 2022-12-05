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
    @points = Point.geocoded
    @markers = @points.map do |point|
      {
        lat: point.latitude,
        lng: point.longitude
      }
    end
  end

  def show
    @road_trip = RoadTrip.find(params[:id])
    @points = @road_trip.points.geocoded
    @markers = @points.map do |point|
      {
        lat: point.latitude,
        lng: point.longitude
      }
    end
    @road_trips = RoadTrip.all
  end

  # def show
  #   @road_trips = RoadTrip.find(params[:id])
  #   @points = Point.new()
  #   @markers =
  #   [
  #     {
  #       lat: @road_trip.geocode[0],
  #       lng: @road_trip.geocode[1]
  #     }
  #   ]
  # end

  def show_details
    @road_trip = RoadTrip.find(params[:id])
    @points = @road_trip.points
    @markers = @points.geocoded.map do |point|
      {
        lat: point.latitude,
        lng: point.longitude
      }
    end
  end

  def new
    @road_trip = RoadTrip.new
    @point = Point.new
  end

  def create
    # "points"=>{"1"=>{"city"=>"iuekvjrt"}, "2"=>{"city"=>""}, "3"=>{"city"=>""}, "4"=>{"city"=>""}, "5"=>{"city"=>""}}
    @road_trip = RoadTrip.new(road_trip_params)
    @road_trip.user = current_user
    @road_trip.save
    points = params[:points].values
    points.each do |point_hash|
      new_point = Point.new(point_hash)
      new_point.road_trip = @road_trip
      new_point.save
    end
    if @road_trip.save
      redirect_to your_road_trip_path(@road_trip)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update_form
    if user.update_form(points_params)
      redirect_to new_road_trip_points_path
    else
      render :edit
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

  def points_params
    params
      .require(:user)
       .permit(
         todos_attributes: [:id, :_destroy, :description]
       )
  end

end
