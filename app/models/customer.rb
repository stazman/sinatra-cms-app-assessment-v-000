class Customer < ActiveRecord::Base
    has_many :orders
    has_secure_password
    EMAIL_REGEX = /(?!.*@.*@)+[a-z0-9A-Z!#^$%&'*+-\/=?_`{|}~;]+@+([A-Za-z0-9])+.+[a-zA-Z][a-zA-Z]/
    validates :email,
                    uniqueness: true,
                    :format => EMAIL_REGEX
end

