class CreateDataciteDates < ActiveRecord::Migration
  def change
    create_table :datacite_dates do |t|
      t.date :date
      t.integer :dateType, default: 0 # defaults to the first value
      t.integer :resource_id

      t.timestamps null: false
    end
  end
end
