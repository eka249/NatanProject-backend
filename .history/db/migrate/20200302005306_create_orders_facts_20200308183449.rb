class CreateOrdersFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_facts do |t|
      t.integer :CustomerID
      t.integer :ProductID
      t.integer :EmployeeID
      t.integer :SupplierID
      t.float :Price
      t.integer :Quantity

      t.timestamps
    end
  end
end
