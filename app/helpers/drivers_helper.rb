module DriversHelper
  def get_bounding_box(user, size)
    return Geocoder::Calculations.bounding_box([user.latitude, user.longitude], size) if size > 0
    nil
  end
end

