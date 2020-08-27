class Api::V1::BrowsersController < ApplicationController
    def index
        
        @browsers = Browser.all
        render json: @browsers
    end

    def show
        @browser = Browser.find_by(id: params[:id])
        render json: @browser
    end
end