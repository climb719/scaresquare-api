class HorrorsController < ApplicationController


    def index
        horrors = Horror.all.order(:title)
        render json: horrors
    end

    def create
      horror = Horror.create(horror_params)
      # if horror.save
        render json: horror 
      # else
      #   render json: {error: "title already exists"}
      # end 
    end

    def update
      horror = Horror.find(params[:id])
      if horror.update(horror_params)
        render json: horror
      else
          render json: {error: horror.errors.full_messages.to_sentence}, status: 400
      end
  end

    end

    private
    def horror_params
      params.require(:horror).permit(:title, :year, :descriptor, :votes)

  

end
