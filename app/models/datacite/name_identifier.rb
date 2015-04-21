module Datacite
  class NameIdentifier < ActiveRecord::Base
    belongs_to :creator
    belongs_to :contributor
  end
end
