class Answer < ApplicationRecord
  belongs_to :chatroom
  belongs_to :option
end
