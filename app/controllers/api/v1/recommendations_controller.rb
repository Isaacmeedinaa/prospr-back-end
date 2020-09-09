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

    def create
        @recommendation = Recommendation.create(recommendation_params)

        if @recommendation.valid?
            render json: { status: 200, recommendation: RecommendationSerializer.new(@recommendation) }
        else
            render json: { status: 401, messages: @recommendation.errors.full_messages }
        end
    end

    private 

    def recommendation_params
        params.require(:recommendation).permit(:title, :content, :browser_id)
    end
end
