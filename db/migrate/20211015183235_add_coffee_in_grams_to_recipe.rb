class AddCoffeeInGramsToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :coffee_in_grams, :integer
  end
end
