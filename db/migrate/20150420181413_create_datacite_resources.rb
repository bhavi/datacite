class CreateDataciteResources < ActiveRecord::Migration
  def change
    create_table :datacite_resources do |t|
      t.string :identifier
      t.string :identifierType
      t.string :local_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
