class OrdersController < ApplicationController
    
    get '/orders' do
        if logged_in?
            erb :'/orders/create_order'
        else
            redirect '/customers/customer_login'
        end
    end

    get '/orders/:id' do
        @orders = Order.all # @customer = Customer.where(Order.customer_id == @customer.id)
        erb :'/orders/customer_orders'
    end

    post '/orders' do
        @order = Order.create(order_date: params[:order_date], kind_of_service: params[:kind_of_service], order_description: params[:order_description])
        @order.save
        redirect "/orders/#{@order.id}"
    end
end