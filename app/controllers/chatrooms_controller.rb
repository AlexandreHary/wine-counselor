class ChatroomsController < ApplicationController
  def new
    @chatroom = Chatroom.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @previous_answers = @chatroom.answers
    @answer = Answer.new
    @current_question = params[:next_question].present? ? Question.find(params[:next_question]) : Question.first
    @options = @current_question.options
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
