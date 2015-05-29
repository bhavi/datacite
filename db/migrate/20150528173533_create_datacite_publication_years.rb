class CreateDatacitePublicationYears < ActiveRecord::Migration
  def change
    create_table :datacite_publication_years do |t|
      t.string :publicationYear
      t.integer :resource_id

      t.timestamps null: false
    end
  end
end
