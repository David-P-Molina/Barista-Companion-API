class AddBloomTimeToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :bloom_time, :string
  end
end
