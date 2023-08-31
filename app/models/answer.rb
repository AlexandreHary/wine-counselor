class Answer < ApplicationRecord
  belongs_to :chatroom
  belongs_to :option

  def associated_question
    option.question
  end
end
