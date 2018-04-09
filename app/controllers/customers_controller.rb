class CustomersController < ApplicationController
    
    get '/registrations/signup' do
        erb :'/registrations/signup'
    end

    get '/customers/index' do
        @customer = Customer.find(session[:id])
        erb :'/customers/index'
    end

    # get '/customers/:id' do
    #     erb :"customers/#{@customer.id}/show"
    # end

    get '/sessions/login' do
        erb :'/sessions/login'
    end

    get '/sessions/logout' do
        session.clear
        erb :'/'
    end

    post 'registrations' do
        @customer = Customer.create(name: params["name"], email: params["email"], password: params["password"])
        @customer.save
        session[:id] = @customer.id
        redirect '/customers/index'
    end

    post '/sessions' do
        @customer = Customer.find_by(email: params["email"], password: params["password"])
        session[:id] = @customer.id
        redirect '/customers/index'
    end
end