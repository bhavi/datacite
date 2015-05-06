module Datacite
  class RelationType < ActiveRecord::Base
    belongs_to :related_identifier
  end
end
