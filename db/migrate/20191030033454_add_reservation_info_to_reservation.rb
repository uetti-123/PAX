class AddReservationInfoToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :start_on, :datetime
    add_column :reservations, :end_on, :datetime
  end
end
