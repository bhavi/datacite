module Datacite
  class Contributor < ActiveRecord::Base
    belongs_to :resource
    has_one :name_identifier

    enum contributorType: [ :admin, :user, :banned ]
  end
end
