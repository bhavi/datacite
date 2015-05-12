require "datacite/engine"

module Datacite
  mattr_accessor :resource_class
  class Engine < ::Rails::Engine
    isolate_namespace Datacite

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
