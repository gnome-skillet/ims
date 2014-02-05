class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :order_date
      t.references :catalog, index: true

      t.timestamps
    end
  end
end
