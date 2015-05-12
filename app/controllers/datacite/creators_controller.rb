require_dependency "datacite/application_controller"

module Datacite
  class CreatorsController < ApplicationController
    before_action :set_creator, only: [:show, :edit, :update, :destroy]

    # GET /creators
    def index
      @creators = Creator.all
    end

    # GET /creators/1
    def show
    end

    # GET /creators/new
    def new
      @creator = Creator.new
      @contributor = Contributor.new
      @subject = Subject.new
      @description = Description.new
      @publisher = Publisher.new
      @title = Title.new
    end

    # GET /creators/1/edit
    def edit
    end

    # POST /creators
    def create
      @creator = Creator.new(creator_params)
      @contributor = Contributor.new(contributor_params)
      @subject = Subject.new(subject_params)
      @description = Description.new(description_params)
      @publisher = Publisher.new(publisher_params)
      @title = Title.new(title_params)

      # Run valid? on each model and check for failures
      debugger
      if @creator.valid? & @contributor.valid? & @subject.valid? & @description.valid?

        Creator.transaction do
          @creator.save!
          @contributor.save!
          @subject.save!
          @description.save!
          @publisher.save!
          @title.save!
          redirect_to @creator, notice: 'all successfully created.'
        end
      else
        render :new
      end
    end

    # PATCH/PUT /creators/1
    def update
      if @creator.update(creator_params)
        redirect_to @creator, notice: 'Creator was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /creators/1
    def destroy
      @creator.destroy
      redirect_to creators_url, notice: 'Creator was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_creator
        @creator = Creator.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
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
  end
end
