module Datacite
  module GeneralsHelper
    #this is actually quite bad practice since we shouldn't just assume
    #another engine is available and reach directly into it and should
    #separate concerns.  However, I need to get to testing blacklight
    #and do not want to focus on fixing existing problems.
    include StashEngine::ResourcesHelper
  end
end
