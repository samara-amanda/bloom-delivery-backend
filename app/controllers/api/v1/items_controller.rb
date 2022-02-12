class Api::V1::ItemsController < ApplicationController
    def index
        items = Item.all
        render json: ItemSerializer.new(items)
    end

    def show
        item = Item.find_by_id(params[:id])
    end

end
