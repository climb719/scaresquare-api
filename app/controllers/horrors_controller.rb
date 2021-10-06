class HorrorsController < ApplicationController

    def index
        horrors = Horror.all
        render json: horrors
      end


end
