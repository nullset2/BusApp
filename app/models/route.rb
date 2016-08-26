class Route < ActiveRecord::Base
  has_many :favorites
  has_many :route_stops
  has_many :driver_routes

  validates :name, presence: true
  validates :polyline, presence: true
end
