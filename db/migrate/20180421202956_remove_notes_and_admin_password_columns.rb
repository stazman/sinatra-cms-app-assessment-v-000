class RemoveNotesAndAdminPasswordColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :customer_notes_date
    remove_column :admins, :customer_notes
    remove_column :admins, :order_notes_date
    remove_column :admins, :order_notes
    remove_column :admins, :admin_password 
    add_column :admins, :password, :string  
  end
end