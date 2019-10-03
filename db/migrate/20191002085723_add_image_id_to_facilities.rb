class AddImageIdToFacilities < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :image_id, :string
  end
end
