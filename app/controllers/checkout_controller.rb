class CheckoutController < ApplicationController
    def reducingwaste
        @title = 'Reducing Waste';
        @content = 'This is the Reducing Waste page'
    end

    def measuringimpact
        @title = 'Measuring Impact';
        @content = 'This is the Measuring Impact page'
    end

    def show
        @additem = Additem.find(params[:id])
    end

    def additem
        @title = 'Add Item';
        @content = 'This is the Add Item page'
    end

    def create
        # render plain: params[:additem].inspect
        @additem = Additem.new(additem_params)
        @additem.save
        redirect_to @additem
    end

    private def additem_params
        params.require(:additem).permit(:name, :donor, :quantity, :received, :expiry, :price)
    end

    def inventory
        @title = 'Inventory';
        @content = 'This is the Inventory page'
    end

    def provider
        @title = 'provider';
        @content = 'This is the provider page'
    end

    def checkout
        @title = 'checkout';
        @content = 'This is the checkout page'
    end
end
