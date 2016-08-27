class DriversController < ApplicationController
  before_filter :authenticate_user!

  def index
    Driver.within_bounding_box(get_bounding_box(current_user, params[:bounding_box_size]))
  end

end
