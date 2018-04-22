class AddColumnOrderDescription < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :order_description, :text
  end
end
