class AppliancecheckoutController < ApplicationController
    class CheckoutController < ApplicationController
        def index
            # redirect_to(:action=>'new')
            @appliancecheckout = ApplianceCheckout.all
        end
        
        def new
            @appliancecheckout = ApplianceCheckout.new
        end
        
        def show
            @appliancecheckout = ApplianceCheckout.find(params[:id])
        end
    
        def create
            # render plain: params[:additem].inspect
            @appliancecheckout = ApplianceCheckout.new(checkout_params)
            if(@appliancecheckout.save)
                redirect_to @appliancecheckout
            else
                render 'new'
            end
        end
    
        def edit
            @appliancecheckout = ApplianceCheckout.find(params[:id])
        end
    
        def update
            @appliancecheckout = ApplianceCheckout.find(params[:id])
            if(@appliancecheckout.update(checkout_params))
                redirect_to @appliancecheckout
            else
                render 'edit'
            end
        end
    
        def destroy
            @appliancecheckout = ApplianceCheckout.find(params[:id])
            @appliancecheckout.destroy
    
            redirect_to checkout_path
        end
    
        private def checkout_params
            params.require(:appliancecheckout).permit(:appliancename, :totalquantity)
        end
    end
    
end
