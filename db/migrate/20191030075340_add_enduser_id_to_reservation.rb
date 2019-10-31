class AddEnduserIdToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :enduser_id, :integer
  end
end
