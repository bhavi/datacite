module Datacite
  mattr_accessor :resource_class
  def self.resource_class
    @@resource_class.constantize
  end
end
