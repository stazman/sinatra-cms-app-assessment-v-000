class Order < ActiveRecord::Base
    # belongs_to :admin
    belongs_to :customer
end