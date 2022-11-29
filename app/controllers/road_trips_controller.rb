class RoadTripsController < ApplicationController
  def index
    @road_trips = RoadTrip.all
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

  def search
  end
end
