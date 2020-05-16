class ReducingwasteController < ApplicationController
    def index
        @search_param_scrap = params[:search]
        @scraps = Scrap.search(@search_param_scrap)
    end

    def new

    end

    def create
        #render plain: params[:reducingwaste].inspect
        
    end
end
