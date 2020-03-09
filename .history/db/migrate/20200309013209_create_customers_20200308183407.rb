class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :CustomerID
      t.string :CompanyName
      t.string :City
      t.string :Country
      t.timestamps
    end
  end
end
