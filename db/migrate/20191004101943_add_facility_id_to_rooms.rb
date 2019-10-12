class AddFacilityIdToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :facility_id, :integer
  end
end
