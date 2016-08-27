class Driver < User
  reverse_geocoded_by :latitude, :longitude
  has_one :driver_route
  has_one :route, through: :driver_route
end
