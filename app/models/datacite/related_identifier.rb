module Datacite
  class RelatedIdentifier < ActiveRecord::Base
    has_one :relation_type
    has_one :related_identifier_type
  end
end
