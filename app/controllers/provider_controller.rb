class ProviderController < ApplicationController
    def index
        # redirect_to(:action=>'new')
        @provider = Provider.all
    end
    
    def new
        @provider = Provider.new
    end
    
    def show
        @provider = Provider.find(params[:id])
    end

    def create
        # render plain: params[:additem].inspect
        @provider = Provider.new(providers_params)
        if(@provider.save)
            redirect_to @provider
        else
            render 'new'
        end
    end

    def edit
        @provider = Provider.find(params[:id])
    end

    def update
        @provider = Provider.find(params[:id])
        if(@provider.update(providers_params))
            redirect_to @provider
        else
            render 'edit'
        end
    end

    def destroy
        @provider = Provider.find(params[:id])
        @provider.destroy

        redirect_to items_path
    end

    private def providers_params
        params.require(:provider).permit(:providername, :description, :totaldonations, :anonymous)
    end
end
