class RoadTripsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "country ILIKE :query OR town ILIKE :query"
      @road_trips = RoadTrip.where(sql_query, query: "%#{params[:query]}%")
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

  def search
  end
end
