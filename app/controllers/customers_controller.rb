class CustomersController < ApplicationController

    get '/customers/login' do
        @customer = Customer.find_by_id(params[:id])
        @orders = Order.where(customer_id: @customer.id)
        erb :"/customers/show_customer_info" 
    end

    get '/customers/customer_signup' do
        if logged_in?
            redirect to '/customers/all_customer_orders'
        else
            erb :'/customers/customer_signup'
        end      
    end

    get '/customers/:id' do
        erb :'/customers/:id/all_customer_orders'
    end

    post '/customers' do
        @customer = Customer.create(first_name: params["first_name"], last_name: params["last_name"], email: params["email"], password: params["password"], address: params["address"], phone_1: params["phone_1"], phone_2: params["phone_2"], fax: params["fax"])
        @customer.save
        redirect '/customers/:id/all_customer_orders'
    end

end    