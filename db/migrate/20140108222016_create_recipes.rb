class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :parent_material_id
      t.references :material, index: true
      t.timestamps
    end
  end
end
