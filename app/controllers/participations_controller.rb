class ParticipationsController < ApplicationController

  def create
    @participation = Participation.new(road_trip: RoadTrip.find(params[:road_trip_id]))
    @participation.validated = false
    @participation.user = current_user
    @participation.save
    redirect_to road_trip_path(params[:road_trip_id])
  end

  def accept
    @participation = Participation.find(params[:id])
    @participation.update(validated: true)
    redirect_to your_road_trip_path(@participation.road_trip)
  end

  def destroy
    @participation = Participation.find(params[:id])
    @participation.destroy
    redirect_to root_path
  end
end
