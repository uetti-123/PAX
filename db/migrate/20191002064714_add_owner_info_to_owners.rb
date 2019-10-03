class AddOwnerInfoToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :password, :string
  end
end
