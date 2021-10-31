class AddElevationToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :elevation, :integer
  end
end
