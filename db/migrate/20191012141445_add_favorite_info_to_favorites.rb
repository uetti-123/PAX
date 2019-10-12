class AddFavoriteInfoToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :enduser_id, :integer
    add_column :favorites, :facility_id, :integer
  end
end
