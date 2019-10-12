class AddRoomImageInfoToRoomImages < ActiveRecord::Migration[5.2]
  def change
    add_column :room_images, :image_id, :string
  end
end
