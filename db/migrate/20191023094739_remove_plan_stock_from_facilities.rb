class RemovePlanStockFromFacilities < ActiveRecord::Migration[5.2]
  def change
    remove_column :facilities, :plan_stock, :integer
  end
end
