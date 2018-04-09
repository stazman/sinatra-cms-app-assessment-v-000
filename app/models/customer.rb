class Customer < ApplicationController
    has_many :projects
    has_many :orders, through: :projects
    has_secure_password
end