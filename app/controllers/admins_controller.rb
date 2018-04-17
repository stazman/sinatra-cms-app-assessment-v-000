class AdminsController < ApplicationController

    get '/admin/signup' do


        erb :'/admin/signup'
    end
    
    # get '/admin/login' do
    #     erb :'/admin/login'
    # end



    # get '/admin/new_order' do
    #     erb :'/admin/new_order'
    # end

    # get '/admin/:id' do
    #     @order = Order.find_by(params[:order_id])
    #     if not logged in and login by admin is true and a login by customer is not true and admin password is authenticated
    #         redirect '/admin/customers_and_orders'
    #     else
    #         redirect '/admin/login'
    #     else 
        
    # end
    
    # post '/admin' do
    #     @order = Order.create(customer_first_name: params["customer_first_name"], customer_last_name: params["customer_last_name"], email: params["email"], password: params["password"], address: params["address"], phone_1: params["phone_1"], phone_2: params["phone_2"], fax: params["fax"])
    #     @order.save
    # end

    # post '/admin/:id' do
    #     @order = Order.find(customer_first_name: params["customer_first_name"], customer_last_name: params["customer_last_name"], email: params["email"], password: params["password"], address: params["address"], phone_1: params["phone_1"], phone_2: params["phone_2"], fax: params["fax"])
    #     @order.update
    #     redirect '/admin/customers_and_orders'
    # end
end