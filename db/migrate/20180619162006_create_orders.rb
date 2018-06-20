class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :order
      t.integer :order_number
      t.string :customer_id

      t.timestamps
    end
  end
end
