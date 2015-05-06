module Datacite
  class RelatedIdentifierType < ActiveRecord::Base
    belongs_to :related_identifier
  end
end
