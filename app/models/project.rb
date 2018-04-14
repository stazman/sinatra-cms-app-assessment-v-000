class Project < ActiveRecord::Base
    belongs_to :customers
    has_many :orders
end