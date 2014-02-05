class CreateDispositions < ActiveRecord::Migration
  def change
    create_table :dispositions do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
