class CreateDriverRoutes < ActiveRecord::Migration
  def change
    create_table :driver_routes, id: false do |t|
      t.integer :driver_id
      t.integer :route_id

      t.timestamps null: false
    end
  end
end
