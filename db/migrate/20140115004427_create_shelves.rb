class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.string :number
      t.references :Cabinet, index: true

      t.timestamps
    end
  end
end
