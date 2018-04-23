class OrdersController < ApplicationController
    
    get '/orders/create_order' do
        if logged_in?
            @kinds_of_service = ["renovation", "repair", "landscaping/hardscaping"]
            erb :'/orders/create_order'
        else
            redirect '/customers/customer_login'
        end
    end

    get '/orders/:id' do
        # @customer = Customer.where(Order.customer_id == @customer.id)
        erb :'/orders/customer_orders'
    end

    post '/orders/create_order' do
        @order = Order.create(order_date: params[:order_date], kind_of_service: params[:kind_of_service], order_description: params[:order_description])
        @order.save
        erb :'/customers/customer_info_and_orders'
    end
end