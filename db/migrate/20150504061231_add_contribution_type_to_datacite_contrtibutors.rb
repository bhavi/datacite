class AddContributionTypeToDataciteContrtibutors < ActiveRecord::Migration
  def self.up
    add_column :datacite_contributors, :contributorType, :integer
  end

  def self.down
    remove_column :datacite_contributors, :contributorType
  end
end
