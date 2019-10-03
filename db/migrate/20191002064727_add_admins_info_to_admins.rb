class AddAdminsInfoToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :password, :string
  end
end
