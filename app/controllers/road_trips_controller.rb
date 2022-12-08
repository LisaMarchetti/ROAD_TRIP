class RoadTripsController < ApplicationController
  def index
    if params[:destination] || params[:departure]
      @road_trips = RoadTrip.joins(:points).where('points.city' => params[:destination])
                            .or(RoadTrip.joins(:points).where('points.country' => params[:destination]))
                            .or(RoadTrip.joins(:points).where('points.continent' => params[:destination]))
                            .or(RoadTrip.joins(:points).where('points.start_date' => params[:departure]))
    else
      @road_trips = RoadTrip.all
    end
    @points = Point.geocoded
    @markers = @points.map do |point|
      {
        lat: point.latitude,
        lng: point.longitude,
        info_window: render_to_string(partial: "info_window", locals: {point: point})
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
    participations = Participation.where(road_trip: @road_trip, user: current_user)
    @participation = participations.empty? ? nil : participations.first
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
    @road_trip = RoadTrip.new(road_trip_params)
    @road_trip.user = current_user
    # @road_trip.save
    # points = params[:points].values
    # points.each do |point_hash|
    #   new_point = Point.new(point_hash)
    #   new_point.road_trip = @road_trip
    #   new_point.save
    # end
    if @road_trip.save
      redirect_to road_trips_path(@road_trip)
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
    params.require(:road_trip).permit(:photo, :title, :description, :native_language, :other_language, :work, :number_participants, points_attributes: [:latitude, :longitude, :city, :country, :continent, :start_date, :end_date, :description, :budget_day, :local_language, :currency, :housing_type, :visits_activities])
  end

end
