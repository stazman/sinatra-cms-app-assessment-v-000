class ApplicationController < Sinatra::Base
    register Sinatra::ActiveRecordExtension
    set :session_secret, "my_secret"
    set :views, Proc.new { File.join(root, "../views/") }
      
    get '/' do
        erb :index
    end
end