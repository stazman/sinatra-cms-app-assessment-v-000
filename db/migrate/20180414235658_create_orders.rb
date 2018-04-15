class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :kind_of_service
      t.float :order_actual_charges
      t.float :order_estimated_charges
      t.string :materials_used
      t.float :materials_cost
      t.float :labor_hours
      t.float :labor_cost
      t.string :service_specialist_1
      t.string :service_specialist_2
      t.string :service_specialist_3
      t.string :service_specialist_4
      t.string :order_notes
      t.integer :project_id
      t.integer :customer_id        
    end
  end
end
