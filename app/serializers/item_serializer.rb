class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :description, :image
  has_many :reviews

end
