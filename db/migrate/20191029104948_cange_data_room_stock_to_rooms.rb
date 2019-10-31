class CangeDataRoomStockToRooms < ActiveRecord::Migration[5.2]
  def change
  	change_column :rooms, :room_stock, :integer
  end
end
