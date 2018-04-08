class project < ApplicationController
    belongs_to :customers
    has_many :orders
end