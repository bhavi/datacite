module Datacite
  class Contributor < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource_class.to_s
    has_one :name_identifier


    validates :contributorName, :resource_id, presence: true

  end
end
