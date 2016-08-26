class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :route

  validates :user_id, presence: true
  validates :routes_id, presence: true
end
