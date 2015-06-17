module Datacite
  class Creator < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource_class.to_s
    has_one :name_identifier

    validates :creatorName, :resource_id, presence: true
  end
end
