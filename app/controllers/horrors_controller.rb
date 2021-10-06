class HorrorsController < ApplicationController

    def index
        horrors = Horror.order(:type)
        render json: horrors, status: 200
      end


end
