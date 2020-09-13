class Api::V1::RecommendationsController < ApplicationController

    skip_before_action :authorized, only: [:index, :show]

    def index
        # @recommendations = Recommendation.all.order('created_at DESC').paginate(page: params[:page], per_page: 4)
        @recommendations = Recommendation.all.order('created_at DESC')
        render json: @recommendations
    end

    def show
        @recommendation = Recommendation.find_by(id: params[:id])
        if @recommendation
            render json: { status: 200, recommendation: RecommendationSerializer.new(@recommendation) }
        else
            render json: { status: 201, error_messages: @recommendation.errors.full_messages }
        end
    end

    def create
        @recommendation = Recommendation.new(title: params[:title], content: params[:content], browser_id: params[:browser_id])

        if @recommendation.valid?

            @recommendation.save

            params[:media_objs].each do |media_obj|
                RecommendationImage.create(img_url: media_obj['url'], img_type: media_obj['type'], recommendation_id: @recommendation.id)
            end

            render json: { status: 200, recommendation: RecommendationSerializer.new(@recommendation) }
        else
            render json: { status: 401, error_messages: @recommendation.errors.full_messages }
        end
    end

    def update
        @recommendation = Recommendation.find_by(id: params[:id])
        @recommendation.update(recommendation_params)

        if @recommendation.valid?
            render json: { status: 200, recommendation: RecommendationSerializer.new(@recommendation) }
        else
            render json: { status: 401, error_messages: @recommendation.errors.full_messages }
        end
    end

    def destroy
        @recommendation = Recommendation.find_by(id: params[:id])

        if @recommendation
            @recommendation.destroy
            render json: { status: 200 }
        else
            render json: { status: 401, error_messages: @recommendation.errors.full_messages }
        end
    end

end
