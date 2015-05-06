module Datacite
  class Publisher < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource
  end
end
