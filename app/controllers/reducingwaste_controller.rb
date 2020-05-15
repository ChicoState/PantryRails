class ReducingwasteController < ApplicationController
    def index

    end

    def new

    end

    def create
        render plain: params[:reducingwaste].inpect
    end
end
