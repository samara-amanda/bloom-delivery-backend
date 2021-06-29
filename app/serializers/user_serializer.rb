class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :address
  has_many :orders, serializer: OrderSerializer
  has_many :items, through: :order_items
  has_many :reviews
  
end
