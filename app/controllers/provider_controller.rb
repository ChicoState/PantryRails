class ProviderController < ApplicationController
    def index
        # redirect_to(:action=>'new')
        @providers = Provider.all
    end
    
    def new
        @providers = Provider.new
    end
    
    def show
        @providers = Provider.find(params[:id])
    end

    def create
        # render plain: params[:additem].inspect
        @providers = Provider.new(providers_params)
        if(@providers.save)
            redirect_to @providers
        else
            render 'new'
        end
    end

    def edit
        @providers = Provider.find(params[:id])
    end

    def update
        @providers = Provider.find(params[:id])
        if(@providers.update(providers_params))
            redirect_to @providers
        else
            render 'edit'
        end
    end

    def destroy
        @providers = Provider.find(params[:id])
        @providers.destroy

        redirect_to items_path
    end

    private def providers_params
        params.require(:providers).permit(:providername, :description, :totaldonations)
    end
end
