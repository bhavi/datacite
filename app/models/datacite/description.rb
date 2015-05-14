module Datacite
  class Description < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource_class.to_s

    #before_save :set_resource

    validates :description, :resource_id, presence: true

    private
      # def set_resource
      # self.resource = Datacite.resource_class.constantize.find(:resource_id)
      # end
  end
end
