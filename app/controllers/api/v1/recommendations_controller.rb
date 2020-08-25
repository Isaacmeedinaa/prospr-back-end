class Api::V1::RecommendationsController < ApplicationController

    def index
        @recommendations = Recommendation.all
        render json: @recommendations
    end

    def show
        @recommendation = Recommendation.find_by(id: params[:id])
        render json: @recommendations
    end

end
