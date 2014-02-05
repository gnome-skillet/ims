class CreateBillOfMaterials < ActiveRecord::Migration
  def change
    create_table :bill_of_materials do |t|
      t.integer :parent_material_id
      t.references :material, index: true
      t.timestamps
    end
  end
end
