class ProviderController < ApplicationController
    def index
        # redirect_to(:action=>'new')
        @providers = Provider.all
    end
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
