class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
