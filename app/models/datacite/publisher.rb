module Datacite
  class Publisher < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource_class.to_s

    before_save :set_resource

    validates :publisher, :resource_id, presence: true

    private
      def set_resource
      self.resource = Datacite.resource_class.constantize.find(:resource_id)
      end
  end
end