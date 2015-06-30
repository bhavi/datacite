require_dependency "datacite/application_controller"

module Datacite
  class GeneralsController < ApplicationController

    # GET /generals
    def index
      @resources = Datacite.resource_class.all
    end

    def show
    end

    # GET /generals/new
    def new
      @resources = Datacite.resource_class.all
      @creator = Creator.new
      @contributor = Contributor.new
      @subject = Subject.new
      @description = Description.new
      @publisher = Publisher.new
      @title = Title.new
      @publication_year = PublicationYear.new
    end

    def edit
      @resources = Datacite.resource_class.all
      set_instances
    end

    # POST /generals/create
    def create
      @resource = Datacite.resource_class.find(generals_params[:resource_id].to_i)
      @creator = Creator.new(creator_params)
      @contributor = Contributor.new(contributor_params)
      @subject = Subject.new(subject_params)
      @description = Description.new(description_params)
      @publisher = Publisher.new(publisher_params)
      @title = Title.new(title_params)
      @publication_year = PublicationYear.new(publication_year_params)

      # Run valid? on each model and check for failures
      if @creator.valid? & @contributor.valid? & @subject.valid? & @description.valid? & @publisher.valid? & @title.valid? & @publication_year.valid?
        Creator.transaction do
          @creator.save!
          @contributor.save!
          @subject.save!
          @description.save!
          @publisher.save!
          @title.save!
          @publication_year.save!
          redirect_to generals_edit_path(resource_id: @resource.id), notice: 'Metadata was successfully created.'
        end
      else
        render :new
      end
    end

    def update
      @resource = Datacite.resource_class.find(generals_params[:resource_id].to_i)
      set_instances
      @creator.update(creator_params)
      @contributor.update(contributor_params)
      @subject.update(subject_params)
      @description.update(description_params)
      @publisher.update(publisher_params)
      @title.update(title_params)
      @publication_year.update(publication_year_params)

      # Run valid? on each model and check for failures
      if @creator.valid? & @contributor.valid? & @subject.valid? & @description.valid? & @publisher.valid? & @title.valid? & @publication_year.valid?
        @creator.transaction do
          @creator.save!
          @contributor.save!
          @subject.save!
          @description.save!
          @publisher.save!
          @title.save!
          @publication_year.save!
          redirect_to main_app.file_uploads_path(resource_id: @resource.id), notice: 'Matadata was successfully updated.'
        end
      else
        render :edit
      end
    end

    def destroy
    end

    def upload
    end

    def summary
    end

    private
      # Only allow a trusted parameter "white list" through.

      def set_instances
        @resource = Datacite.resource_class.find(params[:resource_id].to_i) unless params[:resource_id].blank?
        @creator = Creator.where(resource_id: @resource.id).first_or_initialize
        @contributor = Contributor.where(resource_id: @resource.id).first_or_initialize
        @subject = Subject.where(resource_id: @resource.id).first_or_initialize
        @description = Description.where(resource_id: @resource.id).first_or_initialize
        @publisher = Publisher.where(resource_id: @resource.id).first_or_initialize
        @title = Title.where(resource_id: @resource.id).first_or_initialize
        @publication_year = PublicationYear.where(resource_id: @resource.id).first_or_initialize
      end

      def generals_params
        params.require(:general).permit(:resource_id)
      end

      def creator_params
        params.require(:creator).permit(:creatorName, :name_identifier_id, :affiliation_id, :resource_id)
      end

      def contributor_params
        params.require(:contributor).permit(:contributorName, :name_identifier_id, :contributorType, :affiliation_id, :resource_id)
      end

      def subject_params
        params.require(:subject).permit(:subject, :subjectScheme, :subjectURI, :resource_id)
      end

      def description_params
        params.require(:description).permit(:description, :descriptionType, :resource_id)
      end

      def publisher_params
        params.require(:publisher).permit(:publisher, :resource_id)
      end

      def title_params
        params.require(:title).permit(:title, :titleType, :resource_id)
      end

      def publication_year_params
        params.require(:publication_year).permit(:publicationYear, :resource_id)
      end
  end
end
