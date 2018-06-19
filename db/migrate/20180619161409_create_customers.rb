class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.integer :customer_number
      t.boolean :existing_customer

      t.timestamps
    end
  end
end
