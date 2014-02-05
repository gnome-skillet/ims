class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :number
      t.references :Address, index: true

      t.timestamps
    end
  end
end
