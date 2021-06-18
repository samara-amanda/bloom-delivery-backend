class User < ApplicationRecord
    has_secure_password
    has_many :carts 
    has_many :orders, through: :carts
    has_many :items, through: :orders
    has_many :reviews
end
