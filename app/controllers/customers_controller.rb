class CustomersController < ApplicationController
    
    get '/registrations/signup' do
        erb :"/registrations/signup"
    end

    get '/customers/:id' do
        erb :"customers/#{@customer.id}/show"
    end


    post 'registrations' do
        @customer = Customer.create(name: params["name"], email: params["email"], password: params["password"])
        @customer.save
        session[:id] = @customer.id
        redirect '/customers/:id/show'
    end


end