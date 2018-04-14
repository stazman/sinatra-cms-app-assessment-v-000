class ApplicationController < Sinatra::Base
    # register Sinatra::ActiveRecordExtension
    
    enable :sessions
    
    set :public_folder, 'public'
    set :session_secret, "my_secret"
    set :views, Proc.new { File.join(root, "../views/") }
     
    get '/' do
        erb :index
    end
end