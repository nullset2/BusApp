class Favorite < ActiveRecord::Base
  belongs_to :client
  belongs_to :route

  validates :client_id, presence: true
  validates :route_id, presence: true
end
