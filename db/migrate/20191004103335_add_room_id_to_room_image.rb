class AddRoomIdToRoomImage < ActiveRecord::Migration[5.2]
  def change
    add_column :room_images, :room_id, :integer
  end
end
