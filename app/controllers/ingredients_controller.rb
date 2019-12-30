class IngredientsController < ApplicationController
    def create
        Ingredient.create(ingredients_params)
        render json: {message: "You've successfully created a new ingredient!"}
    end

    private
    def ingredients_params
        params.require(:ingredients).permit(:name, :stock)
    end
end
