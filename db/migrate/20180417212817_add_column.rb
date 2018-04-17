class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :admin_id, :integer
    add_column :orders, :admin_id, :integer
  end
end
