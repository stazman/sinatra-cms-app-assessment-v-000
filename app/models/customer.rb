class Customer < ActiveRecord::Base
    has_many :orders
    belongs_to :admin
    has_secure_password
end