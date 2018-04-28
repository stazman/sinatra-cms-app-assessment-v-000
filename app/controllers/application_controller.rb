require 'rack-flash'

class ApplicationController < Sinatra::Base
    # register Sinatra::ActiveRecordExtension
    
    enable :sessions
    
    # set :public_folder, 'public'
    set :session_secret, "my_secret"
    set :views, Proc.new { File.join(root, "../views/") }
     
    get '/' do
        erb :index
    end

    helpers do
        def logged_in?
          !!current_customer
        end
    
        def current_customer
          @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
        end
    end
end