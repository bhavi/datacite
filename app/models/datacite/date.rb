module Datacite
  class Date < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource_class.to_s
  end
end
