class AddHeadingToFacilities < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :Heading, :string
  end
end
