require 'pry'

class CustomersController < ApplicationController


     get '/customers/customer_signup' do
        
        erb :"/customers/customer_signup"
    end

    # get '/customer_signup' do
    #     if logged_in?
    #         redirect to '/customers/show_customer_info'
    #     else
    #         erb :'/customer_signup'            
    #     end
    # end

    # get '/customers/:id' do
    #     erb :'/customers/:id/all_customer_orders'
    # end

    post '/customers/customer_signup' do
        @customer = Customer.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], address: params[:address], phone_1: params[:phone_1], phone_2: params[:phone_2], fax: params[:fax])    
        @customer.save
        erb :'/customers/show_customer_info'
    end
end 