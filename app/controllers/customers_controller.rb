require 'pry'

class CustomersController < ApplicationController

    get '/customers/customer_signup' do      
        erb :"/customers/customer_signup"
    end


    get '/customers/customer_login' do
        @customer = Customer.find_by_id(params[:id])
        # binding.pry
        if logged_in?
            redirect '/customers/:id'
        else
            erb :"/customers/customer_login"
        end
    end

    get '/customers/edit_customer_info' do
        erb :'/customers/edit_customer_info'
    end

    post '/customers/customer_signup' do
        if params[:password] == "" || params[:email] == ""
            redirect '/customers/customer_signup'
        else
            @customer = Customer.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], address: params[:address], phone_1: params[:phone_1], phone_2: params[:phone_2], fax: params[:fax])    
            @customer.save
            session[:id] = @customer.id
            redirect to '/customers/:id'
        end
        # ??? How is the interpolated string read though it is in a string already
    end

    post '/customers/customer_login' do
        @customer = Customer.find_by(email: params[:email])
        # binding.pry
        #  if @customer && @customer.authenticate(params[:password])
           session[:id] = @customer.id
        #    redirect to "/customer/#{@customer.id}/customer_info_and_orders"
        #  else
           redirect '/customers/customer_login' 
        #  end
    end

    post '/customers/edit_customer_info' do
        @customer = Customer.find(params[:id])
        if logged_in?
            @customer.update(params[:customer])
            redirect '/customer/customer_info_and_orders'
        else
            redirect '/customers/customer_login'
        end
    end
end 