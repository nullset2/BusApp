class CreateStopRequests < ActiveRecord::Migration
  def change
    create_table :stop_requests do |t|
      t.integer :user_id
      t.integer :driver_id

      t.timestamps null: false
    end
  end
end
