class Point < ApplicationRecord
  belongs_to :road_trip
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
