customers = [
    {fname: 'Jon', lname: 'Doe', email: 'e@example.com'},
    {fname: 'Jane', lname: 'Doe', email: 'e@example.com'}
  ]
  
  admins_list = [
      {admin_username: 'smallbizadmin', password:, admin_password: 'admin_password_1', customer_notes_date: '4/17/2018', customer_notes: 'This customer has a large plantation-style home that he plans to renovate in the next few months.', order_notes_date: '4/16/2018', order_notes: 'This order was for a small repair in wooden fencing.'}
  ]
  
  admins_list each do |i|
    Admin.create(i)
  end

  customer_list = [
      {first_name: 'Bob', last_name: 'Smith', email: 'bob_smith999998@smithmail.com', password: 'customer_password_1', address: 
        '123 Main Street, Smithville, OH 63120', phone_1: '555-231-5555', phone_2: '123-456-7890' fax: '980-765-4321', admin_id: 
      }
    ]


    t.string "kind_of_service"
    t.float "order_actual_charges"
    t.float "order_estimated_charges"
    t.string "materials_used"
    t.float "materials_cost"
    t.float "labor_hours"
    t.float "labor_cost"
    t.string "service_specialist_1"
    t.string "service_specialist_2"
    t.string "service_specialist_3"
    t.string "service_specialist_4"
    t.string "admin_id"
    t.integer "customer_id"
