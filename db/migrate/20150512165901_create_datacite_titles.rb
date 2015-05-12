class CreateDataciteTitles < ActiveRecord::Migration
  def change
    create_table :datacite_titles do |t|
      t.string :title
      t.integer :titleType # defaults to the first value
      t.integer :resource_id

      t.timestamps null: false
    end
  end
end
