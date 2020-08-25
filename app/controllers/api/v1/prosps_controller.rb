class Api::V1::ProspsController < ApplicationController

    def index
        @prosps = Prosp.all
        render json: @prosps
    end

    def show
        @prosp = Prosp.find_by(id: params[:id])
        render json: @prosp
    end

end
