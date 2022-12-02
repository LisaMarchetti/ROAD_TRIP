class RoadTrip < ApplicationRecord
  belongs_to :user
  has_many :points
  accepts_nested_attributes_for :points, reject_if: :all_blank, allow_destroy: true
  has_many :participations
  has_one_attached :photo
  validates :title, :photo, presence: true
end
