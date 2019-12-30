class SmoothiesController < ApplicationController
    def index
        smoothies = Smoothie.includes(:ingredients)
        render json: smoothies, include: [:ingredients]
    end

    def show
        smoothie = Smoothie.find(params[:id])
        render json: smoothie, include: :ingredients
    end

    def create
        smoothie = Smoothie.create(smoothie_params)
        byebug
        render json: {message: "You've successfully created a new smoothie!"}
    end

    private

    def smoothie_params
        params.require(:smoothie).permit(
            :name, 
            :size
        )
    end
end
