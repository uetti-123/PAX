class AddTitleToFeatures < ActiveRecord::Migration[5.2]
  def change
    add_column :features, :title, :text
  end
end
