class RoadTrip < ApplicationRecord
  belongs_to :user
  has_many :points
  has_many :participations
  has_one_attached :photo
  validates :title, :photo, presence: true
end
