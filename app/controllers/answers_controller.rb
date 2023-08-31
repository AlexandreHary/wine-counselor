class AnswersController < ApplicationController
  def create
    @option = Option.find_by(small: answer_params[:option_id])
    @chatroom = Chatroom.find(params[:chatroom_id])
    @answer = Answer.new(option: @option, chatroom: @chatroom)
    if @answer.save
      redirect_to chatroom_path(@chatroom)
    else
      render 'chatrooms/show', status: :unprocessable_entity
      @question = @option.question
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:option_id, :chatroom_id)
  end
end
