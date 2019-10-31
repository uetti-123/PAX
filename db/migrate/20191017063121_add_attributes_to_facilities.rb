class AddAttributesToFacilities < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :attribute, :string
  end
end
