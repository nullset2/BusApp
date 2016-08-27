class ChangeFkOnFavorite < ActiveRecord::Migration
  def change
    rename_column :favorites, :user_id, :client_id
  end
end
