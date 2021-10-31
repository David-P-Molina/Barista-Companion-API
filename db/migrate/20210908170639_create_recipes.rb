class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :brew_method, null: false, foreign_key: true
      t.integer :temperature
      t.integer :water_in_grams
      t.references :coffee_bean, null: false, foreign_key: true
      t.string :grind
      t.string :time
      t.string :roast_date
      t.boolean :whole_bean

      t.timestamps
    end
  end
end
