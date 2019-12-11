class SmoothieIngredientsController < ApplicationController
    def create
        SmoothieIngredient.create(
            smoothie_id: params[:smoothie_id],
            ingredient_id: params[:ingredient_id],
            quantity: params[:quantity]
        )
        render json: {message: "You've successfully created a new smoothie!"}
    end
end
