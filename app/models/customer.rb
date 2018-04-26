class Customer < ActiveRecord::Base
    has_many :orders
    has_secure_password
    EMAIL_REGEX = /(?!.*@.*@)+[a-z0-9A-Z!#^$%&'*+-\/=?_`{|}~;]+@+([A-Za-z0-9])+.+[a-zA-Z][a-zA-Z]/
    validates :email,
                    uniqueness: true,
                    :format => EMAIL_REGEX
                    # :message => "Please enter an email that is valid and new to this website."

                    #???This says that if the email is NOT unique, then .errors will be true
                    # format: {with: /(?!.*@.*@)+[a-z0-9A-Z!#^$%&'*+-\/=?_`{|}~;]+@+([A-Za-z0-9])+.+[a-zA-Z][a-zA-Z]/}
                    # format: EMAIL_REGEX, "must be an email address in correct email format" }
end

