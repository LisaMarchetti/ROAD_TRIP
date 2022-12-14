class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_notifications, :user_trips, :my_participations

  def set_notifications
    if current_user
      @user = current_user
      @user_road_trips = @user.road_trips

      @pending_participations = []
      @user_road_trips.each do |road_trip|
        road_trip.participations.each do |participation|
          @pending_participations << participation if participation.validated == false
        end
      end
    end
  end

  def user_trips
    if current_user
      @user_road_trips = current_user.road_trips
    end
  end

  def my_participations
    if current_user
      @my_participations = current_user.participations
    end
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
