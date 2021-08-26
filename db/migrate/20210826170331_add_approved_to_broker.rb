class AddApprovedToBroker < ActiveRecord::Migration[6.1]
  def change
    add_column :brokers, :approved, :boolean, :default => false, :null => false
    add_index  :brokers, :approved
  end
end
