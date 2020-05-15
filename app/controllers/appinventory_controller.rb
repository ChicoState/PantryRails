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
        @appinventory = AppInventory.new(items_params)
        if(@appinventory.save)
            redirect_to @appinventory
        else
            render 'new'
        end
    end

    def edit
        @appinventory = AppInventory.find(params[:id])
    end

    def update
        @appinventory = AppInventory.find(params[:id])
        if(@appinventory.update(appinventory_params))
            redirect_to @appinventory
        else
            render 'edit'
        end
    end

    def destroy
        @appinventory = AppInventory.find(params[:id])
        @appinventory.destroy

        redirect_to appinventory_path
    end

    private def appinventory_params
        params.require(:appinventory).permit(:name, :totalquantity)
    end
end
