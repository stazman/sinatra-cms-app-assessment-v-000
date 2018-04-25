class Customer < ActiveRecord::Base
    has_many :orders
    has_secure_password
    EMAIL_REGEX = /(?!.*@.*@)+[a-z0-9A-Z#!$%&'*+-\/=?_`{|}~;]+([A-Za-z]).*\1[a-z0-9A-Z]+.+[a-zA-Z]/
    validates :email,
                    uniqueness: false,
                    #This says that if the email is NOT unique, then .errors will be true
                    format: { with: EMAIL_REGEX,
                        message: "only allows letters" }

                    # format: EMAIL_REGEX, "must be an email address in correct email format" }
end

