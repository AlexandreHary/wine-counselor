class ChatroomsController < ApplicationController
  def new
    @chatroom = Chatroom.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @answer = Answer.new
    @previous_answers = @chatroom.answers
    @current_question = params[:next_question].present? ? Question.find(params[:next_question]) : Question.first
    if @current_question.position > 1
      @hide = true
    end
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
