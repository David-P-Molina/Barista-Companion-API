class CreateBrewMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :brew_methods do |t|
      t.string :name
      t.text :description
      t.string :equipment

      t.timestamps
    end
  end
end
