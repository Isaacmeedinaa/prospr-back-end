class ApplicationController < ActionController::API

    before_action :authorized

    def encode_token(payload)
        secret_key = ENV['secret_key']
        JWT.encode(payload, secret_key)
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        secret_key = ENV['secret_key']
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, secret_key, algorith: 'H256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def logged_in_browser
        if decoded_token
            browser_id = decoded_token[0]['browser_id']
            @browser = Browser.find_by(id: browser_id)
        end
    end

    def logged_in_browser?
        !!logged_in_browser
    end

    def logged_in_pro
        if decoded_token
            pro_id = decoded_token[0]['pro_id']
            @pro = Pro.find_by(id: pro_id)
        end
    end

    def logged_in_pro?
        !!logged_in_pro
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in_browser? || logged_in_pro?
    end

end
