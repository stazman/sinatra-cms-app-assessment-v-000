class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
    t.string :project_name
    t.string :project_location
    t.float :project_actual_charges
    t.float :project_estimated_charges
    t.string :project_notes
    t.integer :customer_id
    end
  end
end
