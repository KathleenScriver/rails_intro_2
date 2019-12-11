class SmoothiesController < ApplicationController
    def index
        smoothies = Smoothie.all
        render json: smoothies
    end

    def show
        smoothie = Smoothie.find(params[:id])
        render json: smoothie, include: :ingredients
    end

    def create
        Smoothie.create(
            name: params[:name],
            size: params[:size]
        )
        render json: {message: "You've successfully created a new smoothie!"}
    end
end
