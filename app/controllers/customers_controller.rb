class CustomersController < ApplicationController

    get '/registrations/customer_signup' do 
        if logged_in?
            redirect "/"
        else
            erb :"/registrations/customer_signup"
        end
    end
    
    get '/sessions/customer_login' do
        if logged_in?
            redirect "/"
        else
            erb :"/sessions/customer_login"
        end
    end

    get '/customers/:id' do
        @customer = Customer.find(params[:id])
        erb :"/customers/customer_info"
    end

    get '/customers/:id/customer_orders' do
        if logged_in? && current_user
            @orders = Order.where(customer_id: current_user)
            erb :'/customers/customer_orders'
        else
            redirect "/sessions/customer_login"
        end
    end

    get '/customers/:id/edit_customer_info' do
        @customer = Customer.find(params[:id])
        erb :'/customers/edit_customer_info'
    end

    get '/customers/:id/customer_info' do
        @customer = Customer.find(params[:id])
        erb :"/customers/customer_info"
    end
 
    get '/customers/:id/logout' do
        session.clear
        redirect "/sessions/customer_login"
    end

    post '/registrations/customer_signup' do
        if params[:password] == "" || params[:email] == "" || params[:first_name] == "" || params[:last_name] == "" 
            redirect '/registrations/customer_signup'
        else
            @email_check = Customer.new(email: params[:email])
            if !@email_check.errors
                redirect "/"
            else
                @customer = Customer.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], address: params[:address], phone_1: params[:phone_1], phone_2: params[:phone_2], fax: params[:fax])    
                @customer.save
                session[:customer_id] = @customer.id
                redirect "/customers/#{@customer.id}"
            end
        end
    end

    post '/sessions/customer_login' do
        @customer = Customer.find_by(email: params[:email])

        if @customer && @customer.authenticate(params[:password])
            session[:customer_id] = @customer.id
            redirect "/customers/#{@customer.id}"
        else
            redirect "/sessions/customer_login" 
        end

    end

    patch '/customers/:id/edit_customer_info' do
        @customer = Customer.find(params[:id])
        # binding.pry
        if logged_in?
            @customer.update(params[:customer])
            redirect "/customers/#{@customer.id}/customer_info"
        else
            redirect '/sessions/customer_login'
        end
    end
end 