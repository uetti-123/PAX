class RemoveAttributesFromFacilities < ActiveRecord::Migration[5.2]
  def change
    remove_column :facilities, :attribute, :string
  end
end
