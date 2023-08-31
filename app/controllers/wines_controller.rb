class WinesController < ApplicationController
  def index
    @chatroom = Chatroom.find(params[:chatroom_id])
    @tags = @chatroom.tags
    @wines = Wine.all
  end

  # def new
  # end

  # def show
  # end

  # def create
  # end

  private

  def wine_params
    params.require(:wine).permit(:wine_photo, :name, :description, :year, :appellation)
  end
end
