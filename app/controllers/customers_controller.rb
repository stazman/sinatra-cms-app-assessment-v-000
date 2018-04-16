class CustomersController < ApplicationController
    
    get '/customers/new' do
        erb :'/customers/new'
    end 

    post '/customers/new' do
        @customer = Customer.create(customer_first_name: params("customer_first_name"), customer_last_name: params("customer_last_name"), email: params("email"), password: params("password"), address: params("address"), phone_1: params("phone_1"), phone_2: params("phone_2"), fax: params("fax")
        @customer.save
    end
end