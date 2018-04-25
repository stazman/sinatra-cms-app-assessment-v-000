class Customer < ActiveRecord::Base
    has_many :orders
    has_secure_password
    validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\z/i,
                        message: "must be an email address in correct email format" }
end

