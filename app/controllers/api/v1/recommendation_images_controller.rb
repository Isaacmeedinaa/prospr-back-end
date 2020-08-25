class Api::V1::RecommendationImagesController < ApplicationController

    def index
        @recommendation_images = RecommendationImage.all
        render json: @recommendation_images
    end

    def show
        @recommendation_image = RecommendationImage.find_by(id: params[:id])
        render json: @recommendation_image
    end

end
