class Api::V1::ProsController < ApplicationController

    skip_before_action :authorized, only: [:register]

    def register
        @pro = Pro.new(pro_register_params)

        if @pro.valid? 
            @pro.save
            @jwt_token = encode_token(pro_id: @pro.id)
            render json: { status: 200, pro: ProSerializer.new(@pro), jwt_token: @jwt_token }
        else
            render json: { status: 401, error_messages: @pro.errors.full_messages }
        end
    end
    
    def index
        @pros = Pro.all
        render json: @pros
    end

    def show
        @pro = Pro.find_by(id: params[:id])
        render json: @pro
    end

    private

    def pro_register_params
        params.require(:browser).permit(:first_name, :last_name, :email, :phone_number, :password, :password_confirmation)
    end

    def pro_update_params
    end

end
