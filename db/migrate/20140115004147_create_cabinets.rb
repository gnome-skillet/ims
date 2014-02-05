class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinets do |t|
      t.string :number
      t.float :temperature
      t.references :Room, index: true

      t.timestamps
    end
  end
end
