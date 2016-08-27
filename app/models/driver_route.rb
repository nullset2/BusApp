class DriverRoute < ActiveRecord::Base
  belongs_to :driver
  belongs_to :route

  validates :driver_id, presence: true
  validates :route_id, presence: true
end
