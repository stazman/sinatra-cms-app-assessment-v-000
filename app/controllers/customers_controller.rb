class CustomersController < ApplicationController
    
    get '/customers/new' 
        @customer = Customer.create()
        erb :'/customers/new'
    end 



end