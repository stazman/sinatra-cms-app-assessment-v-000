require 'bundler/setup'
Bundler.require

ENV['SINATRA_ENV'] ||= "development"

configure :development do
    set :database, 'sqlite3:db/sbw.db'
end
  
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/sbw#{ENV['SINATRA_ENV']}.sqlite"
)

require_all 'app'

# disable :show_exceptions

# require_relative "../app/controllers/application_controller.rb"


# Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
# Dir[File.join(File.dirname(__FILE__), "../app/controllers", "*.rb")].sort.each {|f| require f}


