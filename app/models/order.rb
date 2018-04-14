class Order < ActiveRecord::Base
    belongs_to :projects
    belongs_to :customers
end