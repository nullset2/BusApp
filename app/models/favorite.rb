class Favorite < ActiveRecord::Base
  validates :user_id, presence: true
  validates :routes_id, presence: true
end
