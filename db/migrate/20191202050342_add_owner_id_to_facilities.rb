class AddOwnerIdToFacilities < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :owner_id, :integer
  end
end
