class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.text :stock_name
      t.decimal :asset,            precision: 10, scale: 3, default: '0'
      t.decimal :price,            precision: 10, scale: 3

      
      t.timestamps
    end
  end
end
