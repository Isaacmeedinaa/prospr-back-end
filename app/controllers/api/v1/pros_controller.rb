class Api::V1::ProsController < ApplicationController
    
    def index
        @pros = Pro.all
        render json: @pros
    end

    def show
        @pro = Pro.find_by(id: params[:id])
        render json: @pro
    end

end
