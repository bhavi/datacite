module Datacite
  class Title < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource_class.to_s

    validates :title, :resource_id, presence: true
  end
end
