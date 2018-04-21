class ForAdminsController < ApplicationController
    
    get '/admins/admin_login' do
        erb :'/admins/admin_login'
    end
    
    get '/admins/:id' do
        erb :'/admins/admin_info'
    end

    get '/admins/all_customers' do
        @customers = Customer.all
        erb :'/admins/all_customers'
    end

    post '/admins/admin_login' do
        @admin = Admin.find_by(admin_username: params[:admin_username])
        if @admin && @admin.authenticate(params[:password])
            session[:admin_id] = @admin.id
            redirect "/admins/#{@admin.id}/admin_info" 
        else
            redirect "/admins/admin_login"
        end
    end


end