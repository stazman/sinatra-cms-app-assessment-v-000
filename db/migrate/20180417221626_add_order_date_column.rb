class AddOrderDateColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :order_date, :string
  end
end
