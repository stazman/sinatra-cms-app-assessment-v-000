class OrdersController < ApplicationController
    
    get '/orders/create_order' do
        if logged_in?
            erb :'/orders/create_order'
        else
            redirect '/customers/customer_login'
        end
    end

    get '/orders/:id' do
        erb :'/orders/customer_orders'
        erb :'/customers/show'
    end

    post '/orders/create_order' do
        @order = Order.create(kind_of_service: params[:kind_of_service]))
        @order.save
        erb :'/customers/customer_info_and_orders'
    end
end