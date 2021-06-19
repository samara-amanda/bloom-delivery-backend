class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id
  has_many :order_items
  has_many :items, through: :order_items
  
end
