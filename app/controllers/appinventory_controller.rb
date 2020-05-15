class AppinventoryController < ApplicationController
    def index
    
    end

    def new
    
    end

    def create 
        render plain: params[:appinventory].inspect
    end
end
