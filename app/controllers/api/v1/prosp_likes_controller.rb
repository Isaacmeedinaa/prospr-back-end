class Api::V1::ProspLikesController < ApplicationController

    def index
        @prosp_likes = ProspLike.all
        render json: @prosp_likes
    end

    def show
        @prosp_like = ProspLike.find_by(id: params[:id])
        render json: @prosp_like
    end

end
