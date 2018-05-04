require 'rack-flash'

class CustomersController < ApplicationController

    use Rack::Flash

    get '/registrations/customer_signup' do 
        erb :"/registrations/customer_signup"
    end
    
    get '/sessions/customer_login' do
        erb :"/sessions/customer_login"
    end

    get '/customers/logout' do
        session.clear
        redirect "/sessions/customer_login"
    end
    
    get '/customers/:id' do
        if logged_in? 
            @customer = Customer.find(params[:id])
            erb :"/customers/customer_info"
        else
            redirect '/login'
        end
    end

    get '/customers/:id/customer_orders' do
        if logged_in? 
            @orders = Order.where(customer_id: current_customer)
            erb :'/customers/customer_orders'
        else
            flash[:message] = "Please sign up or log in."
            redirect "/sessions/customer_login"
        end
    end

    get '/customers/:id/edit_customer_info' do
        if logged_in?
            @customer = Customer.find(params[:id])
            erb :'/customers/edit_customer_info'
        else
            redirect '/login'
        end
    end

    get '/customers/:id/customer_info' do
        if logged_in?
            @customer = Customer.find(params[:id])
            erb :"/customers/customer_info"
        else
            redirect '/login'
        end
    end
 
   
    post '/registrations/customer_signup' do
        if params[:password] == "" || params[:email] == "" || params[:first_name] == "" || params[:last_name] == "" || params[:address] == "" || params[:phone_1] == ""
            flash[:message] = "First Name, Last Name, Email, Password, Address, and Phone Number are required."
            redirect '/registrations/customer_signup'
        else
            @customer = Customer.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], address: params[:address], phone_1: params[:phone_1], phone_2: params[:phone_2], fax: params[:fax])    
            if @customer.errors.any?
                @customer.destroy
                flash[:message] = "Please enter an email that is valid and new to this website."
                redirect '/registrations/customer_signup'
            else
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
            flash[:message] = "Please enter valid log-in information. If you have trouble logging in, please contact the Small Business Office at 555-555-5555."
            redirect "/sessions/customer_login" 
        end
    end

    patch '/customers/:id/edit_customer_info' do
        @customer = Customer.find(params[:id])
        if logged_in?
            @customer.update(params[:customer]) 
            if @customer.errors.any? 
                flash[:message] = "Please enter an email that is valid."
                redirect "/customers/#{@customer.id}/customer_info"
            elsif @customer.email.last != @customer.email 
                redirect "/customers/#{@customer.id}/customer_info"
            end
        else 
            flash[:message] = "Please log in. If you have trouble logging in, please contact the Small Business Office at 555-555-5555."
            redirect "/sessions/customer_login" 
        end
    end
end 