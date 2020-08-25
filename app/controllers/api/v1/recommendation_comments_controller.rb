class Api::V1::RecommendationCommentsController < ApplicationController

    def index
        @recommendation_comments = RecommendationComment.all
        render json: @recommendation_comments
    end

    def show
        @recommendation_comment = RecommendationComment.find_by(id: params[:id])
        render json: @recommendation_comment
    end

end
