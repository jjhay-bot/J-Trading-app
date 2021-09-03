class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.text :stock_name
      t.integer :asset    # stocks
      t.integer :price    # currency
      
      t.timestamps
    end
  end
end
