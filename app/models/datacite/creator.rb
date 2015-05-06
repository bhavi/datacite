module Datacite
  class Creator < ActiveRecord::Base
    attr_accessor :resource_id
    belongs_to :resource, class_name: Datacite.resource_class.to_s
    has_one :name_identifier
    before_save :set_resource

    private
      def set_resource
      self.resource = Datacite.resource_class.find(:resource_id)
      end
  end
end
