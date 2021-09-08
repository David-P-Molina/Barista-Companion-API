class CreateRoasters < ActiveRecord::Migration[6.1]
  def change
    create_table :roasters do |t|
      t.string :name
      t.string :description
      t.integer :year_founded

      t.timestamps
    end
  end
end
