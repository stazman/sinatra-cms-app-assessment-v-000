class Customer < ApplicationController
    has_many :projects
    has_many :orders, through: :projects
end