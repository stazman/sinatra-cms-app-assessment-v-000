class OrdersController < ApplicationController
    

    get '/orders/create_order' do
        # if logged_in
            erb :'/orders/create_order'
        # else
        #     redirect "/customers/customer_login"
        # end
    end

    get '/orders/:id' do
        @order = Order.find(params[:id])
        erb :'/orders/show_new_order'
    end

    get '/orders/:id/edit_new_order' do
        @order = Order.find(params[:id])
        erb :'/orders/edit_new_order'
    end

    post '/orders/create_order' do
        @order = Order.create(order_date: params[:order_date], kind_of_service: params[:kind_of_service], order_description: params[:order_description], customer_id: session[:customer_id])
        @order.save
        redirect "/orders/#{@order.id}"
    end

    patch '/orders/:id' do
        @order = Order.find(params[:id])
        @order.update(order_date: params[:order_date], order_description: params[:order_description])
        redirect "/orders/#{@order.id}"
    end

    # get '/orders/customer_orders' do
    #     # @customer = Customer.find(params[:id])
    #     @orders = Order.all.where(customer_id: @customer.id)
    #     erb :'/orders/customer_orders'
    # end


end