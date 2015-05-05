class CreateDataciteSubjects < ActiveRecord::Migration
  def change
    create_table :datacite_subjects do |t|
      t.string :subject
      t.string :subjectScheme
      t.text :subjectURI
      t.integer :resource_id

      t.timestamps null: false
    end
  end
end
