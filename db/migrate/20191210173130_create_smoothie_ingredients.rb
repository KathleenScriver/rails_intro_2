class CreateSmoothieIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :smoothie_ingredients do |t|
      t.references :smoothie, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
