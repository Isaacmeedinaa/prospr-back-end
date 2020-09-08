class Api::V1::RecommendationsController < ApplicationController

    skip_before_action :authorized, only: [:index, :show]

    def index
        @recommendations = Recommendation.all.paginate(page: params[:page], per_page: 2)
        render json: @recommendations
    end

    def show
        @recommendation = Recommendation.find_by(id: params[:id])
        render json: @recommendations
    end

end
