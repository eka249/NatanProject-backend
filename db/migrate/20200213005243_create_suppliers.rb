class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :CompanyName
      t.string :ContactName
      t.string :City
      t.string :Country

      t.timestamps
    end
  end
end
