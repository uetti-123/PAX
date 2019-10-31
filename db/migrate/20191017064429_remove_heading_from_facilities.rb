class RemoveHeadingFromFacilities < ActiveRecord::Migration[5.2]
  def change
    remove_column :facilities, :Heading, :string
  end
end
