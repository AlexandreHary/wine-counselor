class WinesController < ApplicationController
  def index
    @chatroom = Chatroom.find(params[:chatroom_id])
    @tags = @chatroom.tags
  end
end
