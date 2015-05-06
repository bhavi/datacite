module Datacite
  class Subject < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource
  end
end
