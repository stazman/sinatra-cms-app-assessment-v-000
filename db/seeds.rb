customers = [
    {fname: 'Jon', lname: 'Doe', email: 'e@example.com'},
    {fname: 'Jane', lname: 'Doe', email: 'e@example.com'}
  ]
  
  users.each do |u|
    User.create(u)
  end

  admins_list = [{admin_username: 'smallbizadmin', password:, admin_password: 'admin_password_1'
  t.string "customer_notes_date"
  t.string "customer_notes"
  t.string "order_notes_date"
  t.string "order_notes"


  t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.string "address"
    t.string "phone_1"
    t.string "phone_2"
    t.string "fax"
    t.string "admin_id"


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
