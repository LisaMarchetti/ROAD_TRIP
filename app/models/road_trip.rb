class RoadTrip < ApplicationRecord
  belongs_to :user
  has_many :points
  has_many :participations
end
