class ItemsController < ApplicationController

    def index
        items = Items.all 
        render json: items, include: :users
    end
end
