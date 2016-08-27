class Client < User
  reverse_geocoded_by :latitude, :longitude
end
