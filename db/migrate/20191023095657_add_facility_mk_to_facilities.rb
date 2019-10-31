class AddFacilityMkToFacilities < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :time, :string
    add_column :facilities, :precaution, :text
    add_column :facilities, :equipment, :text
  end
end
