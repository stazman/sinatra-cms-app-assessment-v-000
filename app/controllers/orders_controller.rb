class OrdersController < ApplicationController
    
    get '/orders/create_order' do
        if logged_in?
            erb :'/orders/create_order'
        else
            redirect '/customers/customer_login'
        end
    end

    get '/orders/:id' do
        # @customer = Customer.where(Order.customer_id == @customer.id)
        redirect '/customers/customer_info_and_orders'
    end

    post '/orders/create_order' do
        @order = Order.create(order_date: params[:order_date], kind_of_service: params[:kind_of_service], order_description: params[:order_description])
        @order.save
        redirect "customers/customer_info_and_orders"
    end
end