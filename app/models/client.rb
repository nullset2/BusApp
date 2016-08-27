class Client < User
  has_many :favorites
  has_many :routes, through: :favorites
  reverse_geocoded_by :latitude, :longitude
end
