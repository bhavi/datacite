module Datacite
  class Description < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource_class.to_s

    validates :description, :resource_id, presence: true
  end
end
