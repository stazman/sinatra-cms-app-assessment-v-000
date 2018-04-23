class OrdersController < ApplicationController
    
    get '/orders' do
        if logged_in?
            @orders = Order.where(customer_id: @customer.id])
            erb :'/orders/customer_orders'
        else
            redirect '/customers/customer_login'
        end
    end

    get '/orders/:id' do
         # @customer = Customer.where(Order.customer_id == @customer.id)
        erb :'/orders/show_new_order'
    end

    post '/orders' do
        @order = Order.create(order_date: params[:order_date], kind_of_service: params[:kind_of_service], order_description: params[:order_description], customer_id: session[:customer_id])
        @order.save
        redirect "/orders/#{@order.id}"
    end
end