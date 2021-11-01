class AddElevationToCoffeeBean < ActiveRecord::Migration[6.1]
  def change
    add_column :coffee_beans, :elevation, :string
  end
end
