module Datacite
  module GeneralsHelper
    def title(resource)
      title = Title.where(resource_id: resource.id).first
      unless title.nil?
        @title = title.title
      else
        "unknown"
      end
    end
    def publisher(resource)
      publisher = Publisher.where(resource_id: resource.id).first
      unless publisher.nil?
        @publisher = publisher.publisher
      else
        "unknown"
      end
    end
    def publication_year(resource)
      publication_year = PublicationYear.where(resource_id: resource.id).first
      unless publication_year.nil?
        @publication_year = publication_year.publicationYear
      else
        "unknown"
      end
    end
  end
end
