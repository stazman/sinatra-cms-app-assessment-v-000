class Customer < ActiveRecord::Base
    has_many :orders
    has_secure_password
    validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A[a-zA-Z]+\z/,
                        message: "must be an email address in correct email format" }
end