require 'rack-flash'

class OrdersController < ApplicationController
    
    use Rack::Flash
    
    get '/orders/create_order' do
        if logged_in?
            erb :'/orders/create_order'
        else
            flash[:message] = "Please log in. If you have trouble logging in, please contact the Small Business Office at 555-555-5555."
            redirect '/login'
        end
    end

    get '/orders/:id' do
        if logged_in?
            @order = Order.find(params[:id])
            erb :'/orders/show_new_order'
        else
            redirect '/login'
        end
    end

    get '/orders/:id/edit_new_order' do
        if logged_in?
            @order = Order.find(params[:id])
            erb :'/orders/edit_new_order'
        else
            redirect '/login'
        end
    end

    post '/orders/create_order' do
        @order = Order.create(order_description: params[:order_description], customer_id: session[:customer_id]) 
        @order.order_date = Date.today
        @order.save
        redirect "/orders/#{@order.id}"
    end

    patch '/orders/:id' do
        @order = Order.find(params[:id])
        if @order.customer_id == current_customer.id
            @order.update(order_description: params[:order_description]) 
            @order.order_date = Date.today
            @order.save
            redirect "/orders/#{@order.id}"
        else
            redirect "/"
        end

    end

    delete '/orders/:id/delete' do
        @order = Order.find(params[:id])
        if logged_in? && @order.customer_id == current_customer.id
          @order.delete
          flash[:message] = "Service Order Successfully Deleted."
          redirect "/customers/#{current_customer.id}/customer_orders"
        elsif !logged_in?
          flash[:message] = "Please log in."
          redirect '/login'
        end
    end
end