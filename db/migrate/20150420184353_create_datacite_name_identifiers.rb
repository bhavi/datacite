class CreateDataciteNameIdentifiers < ActiveRecord::Migration
  def change
    create_table :datacite_name_identifiers do |t|
      t.string :nameIdentifier
      t.string :nameIdentifierScheme
      t.text :schemeURI

      t.timestamps null: false
    end
  end
end
