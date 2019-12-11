# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SmoothieIngredient.destroy_all
Smoothie.destroy_all
Ingredient.destroy_all

straw = Smoothie.create(name: "Strawberry", size: 16)
blueb = Smoothie.create(name: "Blueberry", size: 16)

protein = Ingredient.create(name: "Protein", stock: 500)
sberries = Ingredient.create(name: "Strawberries", stock: 200)
bberries = Ingredient.create(name: "Blueberry", stock: 600)
yogurt = Ingredient.create(name: "Yogurt", stock: 1000)

SmoothieIngredient.create(quantity: 5, smoothie: straw, ingredient: sberries)
SmoothieIngredient.create(quantity: 10, smoothie: blueb, ingredient: bberries)
SmoothieIngredient.create(quantity: 2, smoothie: blueb, ingredient: protein)

straw.ingredients << protein

straw.ingredients.create(name: "Ice", stock: 200)