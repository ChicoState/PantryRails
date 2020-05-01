class ItemsController < ApplicationController
    def index
        # redirect_to(:action=>'new')
        @items = Item.all
    end
    
    def new
        @items = Item.new
    end
    
    def show
        @items = Item.find(params[:id])
    end

    def create
        # render plain: params[:additem].inspect
        @items = Item.new(items_params)
        if(@items.save)
            redirect_to @items
        else
            render 'new'
        end
    end

    private def items_params
        params.require(:items).permit(:name, :donor, :quantity, :received, :expiry, :price)
    end
end
