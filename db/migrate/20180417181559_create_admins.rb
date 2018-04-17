class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :admin_username
      t.string :admin_password
      t.string :customer_notes_date
      t.string :customer_notes
      t.string :order_notes_date
      t.string :order_notes
    end
  end
end
