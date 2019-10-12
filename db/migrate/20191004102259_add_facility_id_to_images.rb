class AddFacilityIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :facility_id, :integer
  end
end
