class AddPeopleInfoToPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :number, :integer
  end
end
