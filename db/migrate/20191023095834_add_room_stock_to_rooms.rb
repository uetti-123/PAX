class AddRoomStockToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :room_stock, :string
  end
end
