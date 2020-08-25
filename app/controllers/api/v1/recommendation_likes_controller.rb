class Api::V1::RecommendationLikesController < ApplicationController

    def index
        @recommendation_likes = RecommendationLike.all
        render json: @recommendation_likes
    end

    def show
        @recommendation_like = RecommendationLike.find_by(id: params[:id])
        render json: @recommendation_like
    end

end
