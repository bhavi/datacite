module Datacite
  class Contributor < ActiveRecord::Base
    belongs_to :resource
    has_one :name_identifier
  end
end
