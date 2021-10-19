class AddDateAttemptedToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :date_attempted, :string
  end
end
