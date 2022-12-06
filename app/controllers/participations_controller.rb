class ParticipationsController < ApplicationController

  def create
    @participation = Participation.new(road_trip: RoadTrip.find(params[:road_trip_id]))
    @participation.validated = false
    @participation.user = current_user
    @participation.save
    redirect_to road_trip_path(params[:road_trip_id])
  end
end
