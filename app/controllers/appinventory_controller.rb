class AppinventoryController < ApplicationController
    def index
        # redirect_to(:action=>'new')
        @appinventory = AppInventory.all
    end
    
    def new
        @appinventory = AppInventory.new
    end
    
    def show
        @appinventory = AppInventory.find(params[:id])
    end

    def create
        # render plain: params[:additem].inspect
        @items = AppInventory.new(items_params)
        if(@items.save)
            redirect_to @items
        else
            render 'new'
        end
    end

    def edit
        @items = Item.find(params[:id])
    end

    def update
        @items = Item.find(params[:id])
        if(@items.update(items_params))
            redirect_to @items
        else
            render 'edit'
        end
    end

    def destroy
        @items = Item.find(params[:id])
        @items.destroy

        redirect_to items_path
    end

    private def items_params
        params.require(:items).permit(:name, :donor, :quantity, :received, :expiry, :price)
    end
end
