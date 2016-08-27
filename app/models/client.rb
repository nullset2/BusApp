class Client < User
  has_many :favorites
  reverse_geocoded_by :latitude, :longitude
end
