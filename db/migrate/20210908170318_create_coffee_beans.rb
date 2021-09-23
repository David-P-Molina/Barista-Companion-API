class CreateCoffeeBeans < ActiveRecord::Migration[6.1]
  def change
    create_table :coffee_beans do |t|
      t.string :name
      t.references :roaster, null: false, foreign_key: true
      # t.references :user, null: false, foreign_key: true
      t.string :roast
      t.boolean :whole_bean
      t.text :description
      t.text :notes

      t.timestamps
    end
  end
end
