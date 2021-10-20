class AddDateAttemptedAndNotesToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :date_attempted, :string
    add_column :recipes, :notes, :text
  end
end
