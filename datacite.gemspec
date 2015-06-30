$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "datacite/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "datacite"
  s.version     = Datacite::VERSION
  s.authors     = ["bhavi.vedula"]
  s.email       = ["bhavi13may@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Datacite."
  s.description = "TODO: Description of Datacite."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"
end
