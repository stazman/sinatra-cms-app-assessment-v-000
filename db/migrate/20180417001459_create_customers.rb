class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
      create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :address
      t.string :phone_1
      t.string :phone_2
      t.string :fax
      t.string :customer_notes
    end
  end
end