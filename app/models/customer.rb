class Customer < ActiveRecord::Base
    has_many :orders
    has_many :orders, through: :projects
    has_secure_password
end