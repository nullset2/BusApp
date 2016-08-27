class Route < ActiveRecord::Base
  has_many :route_stops
  has_many :driver_routes
  has_many :drivers, through: :driver_routes

  validates :name, presence: true, uniqueness: true
  validates :polyline, presence: true

  def decrypted_points
    Polylines::Decoder.decode_polyline(polyline)
  end
end
