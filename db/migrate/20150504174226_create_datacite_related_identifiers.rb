class CreateDataciteRelatedIdentifiers < ActiveRecord::Migration
  def change
    create_table :datacite_related_identifiers do |t|
      t.string :relatedIdentifier
      t.integer :relatedIdentifierType_id
      t.integer :relationType_id
      t.integer :resource_id

      t.timestamps null: false
    end
  end
end
