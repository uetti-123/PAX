class AddFacilityInfoToFacilities < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :name, :string
    add_column :facilities, :explanation, :text
    add_column :facilities, :image, :string
    add_column :facilities, :movie, :string
    add_column :facilities, :phone, :string
    add_column :facilities, :address, :string
    add_column :facilities, :postal_code, :string
    add_column :facilities, :email, :string
    add_column :facilities, :password, :string
    add_column :facilities, :region, :string
  end
end
