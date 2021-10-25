class AddDeletableToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :deletable, :boolean
  end
end
