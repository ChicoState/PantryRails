class ProviderController < ApplicationController
    def index
        # redirect_to(:action=>'new')
        @provider = Provider.all
    end
end
Hello