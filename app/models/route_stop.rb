class RouteStop < ActiveRecord::Base
  belongs_to :route
  belongs_to :stop

  validates :route_id, presence: true
  validates :stop_id, presence: true
end
