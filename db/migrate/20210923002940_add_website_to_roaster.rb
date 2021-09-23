class AddWebsiteToRoaster < ActiveRecord::Migration[6.1]
  def change
    add_column :roasters, :website, :string
  end
end
