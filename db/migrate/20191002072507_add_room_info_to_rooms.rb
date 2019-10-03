class AddRoomInfoToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :name, :string
    add_column :rooms, :number, :integer
    add_column :rooms, :capacity, :integer
    add_column :rooms, :information, :text
    add_column :rooms, :price, :integer
  end
end
