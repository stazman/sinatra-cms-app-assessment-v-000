class Admin < ActiveRecord::Base
    has_many :customers
    has_many :orders
    has_secure_password
end