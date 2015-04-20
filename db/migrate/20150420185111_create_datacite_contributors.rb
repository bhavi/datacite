class CreateDataciteContributors < ActiveRecord::Migration
  def change
    create_table :datacite_contributors do |t|
      t.string :contributorName
      t.integer :name_identifier_id
      t.integer :resource_id
      t.integer :affiliation_id

      t.timestamps null: false
    end
  end
end
