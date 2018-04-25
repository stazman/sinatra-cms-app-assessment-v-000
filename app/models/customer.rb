class Customer < ActiveRecord::Base
    has_many :orders
    has_secure_password
    awesome_email_regex = 
    validates :email,
                    uniqueness: true,
                    #???This says that if the email is NOT unique, then .errors will be true
                    format: {with: /(?!.*@.*@)+[a-z0-9A-Z!#^$%&'*+-\/=?_`{|}~;]+@+([A-Za-z0-9])+.+[a-zA-Z][a-zA-Z]/}
                    # format: EMAIL_REGEX, "must be an email address in correct email format" }
end

