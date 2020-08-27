class Api::V1::ProsController < ApplicationController

    skip_action_before :authorized, [:register]

    def register
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
        params.require(:browser).permit(:first_name, :last_name, :email, :phone_number, :password, :confirm_password)
    end

    def pro_update_params
    end

end
