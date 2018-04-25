class Customer < ActiveRecord::Base
    has_many :orders
    has_secure_password
    # EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\z/i
    validates :email,
                    uniqueness: true
                    # :format => EMAIL_REGEX
                        # message: "must be an email address in correct email format" }
end

