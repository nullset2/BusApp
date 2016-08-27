class DriversController < ApplicationController
  include DriversHelper
  before_filter :authenticate_user!

  def index
    @drivers = Driver.within_bounding_box(get_bounding_box(current_user, params[:search_distance].to_i))
  end
end
