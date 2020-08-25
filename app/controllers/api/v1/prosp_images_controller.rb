class Api::V1::ProspImagesController < ApplicationController

    def index
        @prosp_images = ProspImage.all
        render json: @prosp_images
    end

    def show
        @prosp_image = ProspImage.find_by(id: params[:id])
        render json: @prosp_image
    end

end
