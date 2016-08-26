class DriverRoute < ActiveRecord::Base
  belongs_to :driver, foreign_key: :driver_id, class_name: "User"
  belongs_to :route

  validates :driver_id, presence: true
  validates :route_id, presence: true
end
