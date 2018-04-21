  admin_list = [
      {admin_username: 'smallbizadmin', admin_password: 'admin_password_1', customer_notes_date: '4/17/2018', customer_notes: 'This customer has a large plantation-style home that he plans to renovate in the next few months.', order_notes_date: '4/16/2018', order_notes: 'This order was for a small repair in wooden fencing.'}
  ]
  
  admin_list.each do |i|
    Admin.create(i)
  end

  # customer_list = [
  #     {first_name: 'Bob', last_name: 'Smith', email: 'bob_smith999998@smithmail.com', password: 'customer_password_1', address: '123 Main Street, Smithville, OH 63120', phone_1: '555-231-5555', phone_2: '123-456-7890', fax: '980-765-4321'}
  #   ]

  # customer_list.each do |i|
  #    Customer.create(i)
  # end
    
  # order_list = [
  #   {kind_of_service: 'repair', order_actual_charges: '50.12', order_estimated_charges: '55.00', materials_used: 'none', materials_cost: '0.00', labor_hours: '2', labor_cost: "46.00", service_specialist_1: 'Dale Johnson', service_specialist_2: 'Frank Piazza', service_specialist_3: "", service_specialist_4: ""}
  # ]

  # order_list.each do |i|
  #   Order.create(i)
  # end

