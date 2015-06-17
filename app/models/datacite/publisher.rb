module Datacite
  class Publisher < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource_class.to_s

    validates :publisher, :resource_id, presence: true
  end
end