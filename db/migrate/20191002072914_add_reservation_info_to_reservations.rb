class AddReservationInfoToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :payment, :text
    add_column :reservations, :sum_price, :integer
  end
end
