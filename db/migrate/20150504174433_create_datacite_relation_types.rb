class CreateDataciteRelationTypes < ActiveRecord::Migration
  def change
    create_table :datacite_relation_types do |t|
      t.string :relationType, default: 0 # defaults to the first value
      t.string :relatedMetadataScheme
      t.text :schemeURI
      t.string :schemeType

      t.timestamps null: false
    end
  end
end
