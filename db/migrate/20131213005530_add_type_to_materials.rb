class AddTypeToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :disposition, :string
  end
end
