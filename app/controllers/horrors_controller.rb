class HorrorsController < ApplicationController


    def index
        horrors = Horror.order('LOWER(title)')
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
      set_horror
      if @horror.update(horror_params)
        render json: @horror
      else
          render json: {error: @horror.errors.full_messages.to_sentence}, status: 400
      end
  end

    private

    def set_horror
      @horror = Horror.find(params[:id])
    end


    def horror_params
      params.require(:horror).permit(:title, :format, :year, :descriptor, :votes)
    end


end
