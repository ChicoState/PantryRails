class ItemsController < ApplicationController
    def index
        redirect_to(:action=>'new')
    end
    
    def new

    end
    
    def show
        @items = Item.find(params[:id])
    end

    def create
        # render plain: params[:additem].inspect
        @items = Item.new(items_params)
        @items.save
        redirect_to @items
    end

    private def items_params
        params.require(:items).permit(:name, :donor, :quantity, :received, :expiry, :price)
    end
end
