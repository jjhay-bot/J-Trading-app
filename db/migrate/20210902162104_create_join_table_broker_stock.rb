class CreateJoinTableBrokerStock < ActiveRecord::Migration[6.1]
  def change
    create_join_table :brokers, :stocks do |t|
      t.index [:broker_id, :stock_id]
      t.index [:stock_id, :broker_id]
    end
  end
end
