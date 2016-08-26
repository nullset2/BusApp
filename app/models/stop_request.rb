class StopRequest < ActiveRecord::Base
  enum status: [:requested, :taken, :ignored]
  belongs_to :user
  belongs_to :driver, foreign_key: :driver_id, class_name: "User"

  validates :user_id, presence: true
  validates :driver_id, presence: true
end
