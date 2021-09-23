class AddFilterToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :filter, :boolean
  end
end
