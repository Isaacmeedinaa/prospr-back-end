class Api::V1::RecommendationImagesController < ApplicationController

    def index
        @recommendation_images = RecommendationImage.all
        render json: @recommendation_images
    end

    def show
        @recommendation_image = RecommendationImage.find_by(id: params[:id])
        render json: @recommendation_image
    end

    def create
        @recommendation_image = RecommendationImage.create(recommendation_image_params)

        if @recommendation_image.valid?
            render json: { status: 200, recommendation_image: RecommendationImageSerializer.new(@recommendation_image) }
        else
            render json: { status: 401, error_messages: @recommendation_image.errors.full_messages }
        end
    end

    private

    def recommendation_image_params
        params.require(:recommendation_image).permit(:img_url, :recommendation_id)
    end

end
