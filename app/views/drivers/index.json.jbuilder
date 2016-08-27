json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :email, :latitude, :longitude, :driver_route
  json.url driver_url(driver, format: :json)
end
