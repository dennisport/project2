class CommunitiesController < ApplicationController
    before_action :find_community, only: [:show]
    def index
      @communities = Community.all
    end
  
    def show
    end
  
    private 
    def find_community
      @community = Community.find(params[:id])

    end
    def community_params
      params.require.permit(:name)
    end
end
