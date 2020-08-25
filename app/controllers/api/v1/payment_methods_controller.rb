class Api::V1::PaymentMethodsController < ApplicationController

    def index
        @payment_methods = PaymentMethod.all
        render json: @payment_methods
    end

    def show
        @payment_method = PaymentMethod.find_by(id: params[:id])
        render json: @payment_method
    end

end
