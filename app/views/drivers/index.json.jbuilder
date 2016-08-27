json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :latitude, :longitude
  json.url driver_url(driver, format: :json)
end
