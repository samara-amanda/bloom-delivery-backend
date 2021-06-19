class Api::V1::OrdersController < ApplicationController
    def index
        orders = Order.all
        render json: OrderSerializer.new(orders)
    end

    def show
        user = User.find_by_id(params[:id])
        order = user.order.find_by_id(params[:order_id])
        render json: OrderSerializer.new(order)
    end
end
