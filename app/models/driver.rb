class Driver < User 
  has_one :driver_route
  has_one :route, through: :driver_route
end
