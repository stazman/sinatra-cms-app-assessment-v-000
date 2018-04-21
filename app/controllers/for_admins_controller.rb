class ForAdminsController < ApplicationController
    
    get '/admins/admin_login' do
        erb :'/admins/admin_login'
    end
    
    get '/admins/all_customers' do
        @customers = Customer.all
        erb :'/admins/all_customers'
    end

    post '/admins/admin_login' do
        @admin = Admin.find(params[:admin_username])
        if @admin && @admin.authenticate(params[:password])
            session[:admin_id] = @admin.id
            redirect "/admins/all_customers" 
        else
            redirect "/admins/admin_login"
        end
    end


end