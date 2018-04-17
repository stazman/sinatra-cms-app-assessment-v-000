class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :customer_notes
    remove_column :orders, :order_notes
  end
end
