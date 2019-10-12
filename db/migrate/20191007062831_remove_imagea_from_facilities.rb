class RemoveImageaFromFacilities < ActiveRecord::Migration[5.2]
  def change
    remove_column :facilities, :image, :string
  end
end
