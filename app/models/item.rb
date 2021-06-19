class Item < ApplicationRecord
    has_many :orders
    has_many :order_items, through: :orders
    has_many :reviews
end
