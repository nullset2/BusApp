class Stop < ActiveRecord::Base
  has_many :route_stops
  has_many :routes, through: :route_stops

  validates :latitude, presence: true
  validates :longitude, presence: true
end
