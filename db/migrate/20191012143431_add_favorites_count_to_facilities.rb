class AddFavoritesCountToFacilities < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :Favorites_count, :integer
  end
end
