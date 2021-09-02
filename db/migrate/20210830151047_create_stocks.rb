class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.text :stock_name
      t.integer :asset    # stocks
      t.integer :balance  # currency
      t.integer :broker_id
      
      t.timestamps
    end
  end
end
