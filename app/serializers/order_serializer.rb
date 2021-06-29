class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :created_at

  attribute :order_items do |order|
    order.items.map do |item| 
      {
        name: item.name,
        price: item.price,
      }
    end
  end

  
end
