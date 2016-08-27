class DriversController < ApplicationController
  include DriversHelper
  before_filter :authenticate_user!

  def index
    render(json: { errors: "Submit all required params" }, status: :unprocessable_entity) and return if params[:search_distance].blank?
    @drivers = Driver.within_bounding_box(get_bounding_box(current_user, params[:search_distance].to_f))
    if !@drivers.empty?
      return @drivers
    else
      render json: { errors: "No drivers found" }, status: :not_found
    end
  end
end
