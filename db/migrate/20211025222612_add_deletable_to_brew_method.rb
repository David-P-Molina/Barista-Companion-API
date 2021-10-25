class AddDeletableToBrewMethod < ActiveRecord::Migration[6.1]
  def change
    add_column :brew_methods, :deletable, :boolean
  end
end
