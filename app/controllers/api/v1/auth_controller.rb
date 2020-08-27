class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:browser_login, :pro_login]

    def browser_login   
        @browser = Browser.find_by(email: browser_login_params[:email])

        if @browser && @browser.authenticate(browser_login_params[:password])
            @jwt_token = encode_token({ browser_id: @browser.id })
            render json: { status: 200, browser: BrowserSerializer.new(@browser), jwt_token: @jwt_token }
        else
            render json: { status: 401, error_message: 'Invalid username or password', login: :unauthorized }
        end
    end

    def browser_auto_login
        if logged_in_browser
            render json: { status: 200, browser: BrowserSerializer.new(@browser) } 
        else
            render json: { status: 401, error_message: 'No browser is logged in!', login: :unauthorized }
        end
    end

    def pro_login
        @pro = Pro.find_by(email: pro_login_params[:email])

        if @pro && @pro.authenticate(pro_login_params[:password])
            @jwt_token = encode_token({ pro_id: @pro.id })
            render json: { status: 200, pro: ProSerializer.new(@pro), jwt_token: @jwt_token }
        else
            render json: { status: 401, error_message: 'Invalid username or password', login: :unauthorized }
        end
    end

    def pro_auto_login
        if logged_in_pro
            render json: { status: 200, pro: ProSerializer.new(@browser) } 
        else
            render json: { status: 401, error_message: 'No pro is logged in!', login: :unauthorized }
        end
    end

    private

    def browser_login_params
        params.require(:browser).permit(:email, :password)
    end

    def pro_login_params
        params.require(:pro).permit(:email, :password)
    end

end