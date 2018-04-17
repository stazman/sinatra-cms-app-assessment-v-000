class RenameColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :customers, :customer_notes, :admin_id
    rename_column :orders, :order_notes, :admin_id
  end
end
