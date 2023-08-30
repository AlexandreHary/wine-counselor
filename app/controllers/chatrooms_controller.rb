class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
  end

  def create
    @chatroom = Chatroom.create!(user: current_user)
    redirect_to chatroom_path(@chatroom), notice: "Publié avec succès !", status: :see_other
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:user_id)
  end
end
