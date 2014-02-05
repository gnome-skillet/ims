class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :partnumber
      t.integer :count
      t.float :amount_per_container
      t.string :unit
      t.references :vendor, index: true
      t.references :material, index: true

      t.timestamps
    end
  end
end
