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

  def new
    @road_trip = RoadTrip.new()
  end

  def create
  end

  def edit
  end

  def update
  end

      # def search
      # if params[:query].present?
      # @points = Point.where(city: params[:query]) # ou @road_trips = RoadTrip.points.where(city: params[:query])
      # @points = Point.where(start_date: params[:query]) # @road_trips = RoadTrip.points.where(start_date: params[:query])
      # else
      # @road_trips = RoadTrip.all
      # end
      # end
end
