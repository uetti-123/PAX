class RemoveImageFromFacilities < ActiveRecord::Migration[5.2]
  def change
    remove_column :facilities, :image_id, :string
  end
end
