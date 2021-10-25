class Api::V1::OrdersController < ApplicationController
    def index
        if logged_in?
            orders = current_user.orders
            render json: OrderSerializer.new(orders)
        end
    end

    def show
        user = User.find_by_id(params[:id])
        order = user.order.find_by_id(params[:order_id])
        render json: OrderSerializer.new(order)
    end
end
