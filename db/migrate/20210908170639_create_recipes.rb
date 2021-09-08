class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :brew_method, null: false, foreign_key: true
      t.float :temperature
      t.string :water
      t.references :coffee_beans, null: false, foreign_key: true
      t.string :grind
      t.string :time

      t.timestamps
    end
  end
end
