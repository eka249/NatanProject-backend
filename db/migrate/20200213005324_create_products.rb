class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :ProductName
      t.integer :SupplierID
      t.integer :CategoryID

      t.timestamps
    end
  end
end
