class Api::V1::BrowsersController < ApplicationController

    skip_before_action :authorized, only: [:register]

    def register
        @browser = Browser.new(browser_register_params)

        if @browser.valid? 
            @browser.save
            @jwt_token = encode_token(browser_id: @browser.id)
            render json: { status: 200, browser: BrowserSerializer.new(@browser), jwt_token: @jwt_token }
        else
            render json: { status: 401, message: @browser.errors.full_messages }
        end
    end

    def index 
        @browsers = Browser.all
        render json: @browsers
    end

    def show
        @browser = Browser.find_by(id: params[:id])
        render json: @browser
    end

    private 

    def browser_register_params
        params.require(:browser).permit(:first_name, :last_name, :email, :phone_number, :password, :password_confirmation)
    end

    def browser_profile_params
    end
end