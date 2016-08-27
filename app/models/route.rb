class Route < ActiveRecord::Base
  has_many :favorites
  has_many :route_stops
  has_many :driver_routes

  validates :name, presence: true
  validates :polyline, presence: true

  def decrypted_points
    Polylines::Decoder.decode_polyline(polyline)
  end
end
