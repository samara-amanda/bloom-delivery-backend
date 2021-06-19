class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :address
  has_many :orders
  has_many :reviews
  
end
