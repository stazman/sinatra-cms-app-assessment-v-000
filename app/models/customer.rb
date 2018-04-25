class Customer < ActiveRecord::Base
    has_many :orders
    has_secure_password
    validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
                        message: "must be an email address in correct email format" }
end

