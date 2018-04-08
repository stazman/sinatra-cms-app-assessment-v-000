class Order < ApplicationController
    belongs_to :projects
    belongs_to :customers
end