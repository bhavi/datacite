class CreateDataciteRelatedIdentifierTypes < ActiveRecord::Migration
  def change
    create_table :datacite_related_identifier_types do |t|
      t.string :relatedIdentifierType

      t.timestamps null: false
    end
  end
end
