module Datacite
  class Resource < ActiveRecord::Base
    has_many :creators
    has_many :contributors
  end
end
