class AddBlendTypeRegionProcessingMethodDryingMethodAndRoastDateToCoffeeBean < ActiveRecord::Migration[6.1]
  def change
    add_column :coffee_beans, :blend_type, :string
    add_column :coffee_beans, :region, :string
    add_column :coffee_beans, :processing_method, :string
    add_column :coffee_beans, :drying_method, :string
  end
end
