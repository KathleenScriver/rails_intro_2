class IngredientsController < ApplicationController
    def create
        Ingredient.create(
            name: params[:name],
            stock: params[:stock]
        )
        render json: {message: "You've successfully created a new ingredient!"}
    end
end
