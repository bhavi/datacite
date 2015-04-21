module Datacite
  class Creator < ActiveRecord::Base
    belongs_to :resource
    has_one :name_identifier
  end
end
