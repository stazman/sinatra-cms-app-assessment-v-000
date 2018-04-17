class OrdersController < ApplicationController
    
    get '/orders/new_order' do
        @orders = Order.all.find
        erb :'/orders/customer_orders'
    end

    get '/orders/:id' do
        erb :'/customers/show'
    end

    post '/orders' do
        @order = Order.create
        @order.save
        redirect '/show_order'
    end

    

end