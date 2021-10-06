class HorrorsController < ApplicationController

    def index
        horrors = Horror.all
        render json: horrors, status: 200
      end


end
