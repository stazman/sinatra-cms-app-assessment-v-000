class CustomersController < ApplicationController
    
    get 'registrations' do
        erb :"registrations/signup"
    end

    post 'registrations' do
        erb :"/"
    end


end