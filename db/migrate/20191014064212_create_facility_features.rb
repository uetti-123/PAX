class CreateFacilityFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :facility_features do |t|
      t.references :facility, foreign_key: true
      t.references :feature, foreign_key: true

      t.timestamps
    end
  end
end
