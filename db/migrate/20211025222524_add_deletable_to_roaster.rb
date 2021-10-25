class AddDeletableToRoaster < ActiveRecord::Migration[6.1]
  def change
    add_column :roasters, :deletable, :boolean
  end
end
