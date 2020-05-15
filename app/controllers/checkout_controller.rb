class CheckoutController < ApplicationController
    def index
        # redirect_to(:action=>'new')
        @checkout = Checkout.all
    end
    
    def new
        @checkout = Checkout.new
    end
    
    def show
        @checkout = Checkout.find(params[:id])
    end

    def create
        # render plain: params[:additem].inspect
        @checkout = Checkout.new(checkout_params)
        if(@checkout.save)
            redirect_to @checkout
        else
            render 'new'
        end
    end

    def edit
        @checkout = Checkout.find(params[:id])
    end

    def update
        @checkout = Checkout.find(params[:id])
        if(@checkout.update(checkout_params))
            redirect_to @checkout
        else
            render 'edit'
        end
    end

    def destroy
        @checkout = Checkout.find(params[:id])
        @checkout.destroy

        redirect_to checkout_path
    end

    private def checkout_params
        params.require(:checkout).permit(:appliancename, :totalquantity)
    end
end
