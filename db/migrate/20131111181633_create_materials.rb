class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :description
      t.string :smn

      t.timestamps
    end
  end
end
