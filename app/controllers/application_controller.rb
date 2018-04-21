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
          !!session[:customer_id]
        end
    
        # def current_user
        #   Customer.find_by_id(session[:customer_id])
        # end
    end
end