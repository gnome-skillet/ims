class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :units
      t.float :amount
      t.references :recipe, index: true
      t.references :material, index: true

      t.timestamps
    end
  end
end
