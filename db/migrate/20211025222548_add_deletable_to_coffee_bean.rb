class AddDeletableToCoffeeBean < ActiveRecord::Migration[6.1]
  def change
    add_column :coffee_beans, :deletable, :boolean
  end
end
