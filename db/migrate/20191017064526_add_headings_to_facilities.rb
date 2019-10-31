class AddHeadingsToFacilities < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :heading, :string
  end
end
