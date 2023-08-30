class ChatroomsController < ApplicationController
  def new
    @chatroom = Chatroom.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end

  def create
    @chatroom = Chatroom.create!(user: current_user)
    redirect_to chatroom_path(@chatroom), notice: "Bienvenue sur WineCounselor !", status: :see_other
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:user_id)
  end
end
