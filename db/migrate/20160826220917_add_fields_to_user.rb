class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :latitude, :decimal
    add_column :users, :longitude, :decimal
  end
end
