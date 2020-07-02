class CommunitiesController < ApplicationController
    before_action :find_community, only: [:show]
    def index
      @communities = Community.all
    end
  
    def show
    end

    def new
      @community = Community.new
    end

    def create
      @community = Community.new(community_params)
      if @community.valid?
          @community.save  
          redirect_to community_path(@community)
        else
          render :new
      end
    end
  
    private 
    def find_community
      @community = Community.find(params[:id])

    end


    def community_params
      params.require(:community).permit!
  end
end
