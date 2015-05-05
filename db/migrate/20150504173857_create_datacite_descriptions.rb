class CreateDataciteDescriptions < ActiveRecord::Migration
  def change
    create_table :datacite_descriptions do |t|
      t.text :description
      t.integer :descriptionType, default: 0 # defaults to the first value
      t.integer :resource_id

      t.timestamps null: false
    end
  end
end
