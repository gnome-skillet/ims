class CreateIntermediates < ActiveRecord::Migration
  def change
    create_table :intermediates do |t|
      t.string :units
      t.float :amount
      t.references :bill_of_material, index: true
      t.references :material, index: true

      t.timestamps
    end
  end
end
