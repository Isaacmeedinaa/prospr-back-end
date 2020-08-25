class Api::V1::ProspCommentsController < ApplicationController

    def index
        @prosp_comments = ProspComment.all
        render json: @prosp_comments
    end

    def show
        @prosp_comment = ProspComment.find_by(id: params[:id])
        render json: @prosp_comment
    end

end
