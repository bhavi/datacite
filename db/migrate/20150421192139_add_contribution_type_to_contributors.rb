class AddContributionTypeToContributors < ActiveRecord::Migration
  def change
    add_column :datacite_contributors, :contributorType, :integer
  end
end
