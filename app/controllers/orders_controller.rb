class OrdersController < ApplicationController
    

    get '/orders/create_order' do
        erb :'/orders/create_order'
    end

    get '/orders/:id' do
        @order = Order.find_by_id(params[:id])
        erb :'/orders/show_new_order'
    end

    post '/orders/create_order' do
        @order = Order.create(order_date: params[:order_date], kind_of_service: params[:kind_of_service], order_description: params[:order_description], customer_id: session[:customer_id])
        @order.save
        redirect "/orders/#{@order.id}"
    end
end