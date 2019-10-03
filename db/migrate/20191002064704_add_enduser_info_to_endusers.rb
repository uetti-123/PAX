class AddEnduserInfoToEndusers < ActiveRecord::Migration[5.2]
  def change
    add_column :endusers, :name, :string, null: false
    add_column :endusers, :name_kana, :string, null: false
    add_column :endusers, :tell, :string, null: false
    add_column :endusers, :address, :string, null: false
    add_column :endusers, :postal_code, :string, null: false
    add_column :endusers, :password, :string
    add_column :endusers, :unscribe, :boolean
  end
end
