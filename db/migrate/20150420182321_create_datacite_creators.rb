class CreateDataciteCreators < ActiveRecord::Migration
  def change
    create_table :datacite_creators do |t|
      t.string :creatorName
      t.integer :name_identifier_id
      t.integer :resource_id
      t.integer :affiliation_id

      t.timestamps null: false
    end
  end
end
