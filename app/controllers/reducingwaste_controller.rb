class ReducingwasteController < ApplicationController
    def index
        @search_param_scrap = params[:search]
        @scraps = Scrap.search(@search_param_scrap)
    end

    def new
        @scrap = Scrap.new
    end

    def create
        #render plain: params[:reducingwaste].inspect
        @scrap = Scrap.new scrap_params
        @scrap.user = current_user
        if @scrap.save
            redirect_to scraps_path
        else
            render :new
        end
    end

    def show
        @scrap = Scrap.find params[:id]
        @scrapscomments = @scrap.scrapscomments
        @scrapscomment = Scrapscomment.new
    end

    def update
        if @scrap.update scrap_params
          redirect_to scrap_path(@scrap)
        else
          render :edit
        end
    end
end
