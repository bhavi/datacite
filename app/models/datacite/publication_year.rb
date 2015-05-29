module Datacite
  class PublicationYear < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource_class.to_s, foreign_key: "resource_id"


    validates :publicationYear, :resource_id, presence: true
  end
end
