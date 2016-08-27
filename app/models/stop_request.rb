class StopRequest < ActiveRecord::Base
  enum status: [:requested, :taken, :ignored]
  belongs_to :client
  belongs_to :driver

  validates :client_id, presence: true
  validates :driver_id, presence: true
end
