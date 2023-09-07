class AnswersController < ApplicationController
  def create
    @option = Option.find(answer_params[:option])
    @chatroom = Chatroom.find(params[:chatroom_id])
    @previous_answers = @chatroom.answers
    @next_question = @option.question.next_question
    @answer = Answer.new(option: @option, chatroom: @chatroom)
    respond_to do |format|
      if @answer.save
        if @answer.associated_question.last
          format.html { redirect_to chatroom_wines_path }
          format.text { redirect_to chatroom_wines_path }
        else
          format.html { redirect_to chatroom_path(@chatroom, next_question: @next_question) }
          format.text { render partial: "chatrooms/messages",
                               locals: {
                                 previous_answers: @previous_answers,
                                 current_question: @next_question,
                                 chatroom: @chatroom,
                                 answer: Answer.new
                                 },
                               formats: [:html]
          }
        end
      else
        format.html { render 'chatrooms/show', status: :unprocessable_entity }
        format.text { render partial: "chatrooms/messages",
                             locals: {
                               previous_answers: @previous_answers,
                               current_question: @next_question,
                               chatroom: @chatroom,
                               answer: @answer
                               },
                             formats: [:html]
        }
      end
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:option)
  end

  # private

  # def answer_params
  #   params.require(:answer).permit(:content)
  # end
end
