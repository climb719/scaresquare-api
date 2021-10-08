class HorrorsController < ApplicationController

    def index
        horrors = Horror.all.order(:title)
        render json: horrors
    end

    def create
      horror = Horror.create(horror_params)
      render json: horror 
    end

    private

    def horror_params
      params.require(:horror).permit(:title, :year, :descriptor, :votes)
    end


end
