class AnswersController < ApplicationController
  def create
    @option = Option.find(answer_params[:option])
    @chatroom = Chatroom.find(params[:chatroom_id])
    @answer = Answer.new(option: @option, chatroom: @chatroom)
    if @answer.save
      if @answer.associated_question.last
        redirect_to chatroom_wines_path
      else
        redirect_to chatroom_path(@chatroom, next_question: @option.question.next_question)
      end
    else
      render 'chatrooms/show', status: :unprocessable_entity
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:option)
  end
end
