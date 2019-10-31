class AddRoomIdToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :room_id, :integer
  end
end
