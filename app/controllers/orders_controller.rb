class OrdersController < ApplicationController
    

    get '/orders/create_order' do
        erb :'/orders/create_order'
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
        @order = Order.create(order_date: params[:order_date], order_description: params[:order_description], customer_id: session[:customer_id])
        @order.save
        redirect "/orders/#{@order.id}"
    end

    patch '/orders/:id' do
        @order = Order.find(params[:id])
        @order.update(order_date: params[:order_date], order_description: params[:order_description])
        redirect "/orders/#{@order.id}"
    end

    delete '/orders/:id/delete' do
        #delete tweet by :id
        @order = Order.find(params[:id])
        #binding.pry
        if logged_in? && @order.customer_id == current_user.id
          @order.delete
          redirect "/customers/#{current_user.id}/customer_info"
        else
          redirect '/login'
        end
    end
end