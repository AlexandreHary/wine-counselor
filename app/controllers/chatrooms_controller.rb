class ChatroomsController < ApplicationController
  def show
  end

  def create
    @chatroom = Chatroom.create!(user: current_user)
    redirect_to chatroom_path(@chatroom), notice: "Publié avec succès !", status: :see_other
  end
end
