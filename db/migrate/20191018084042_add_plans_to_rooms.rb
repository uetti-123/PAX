class AddPlansToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :plan, :string
    add_column :rooms, :plan_stock, :integer
  end
end
