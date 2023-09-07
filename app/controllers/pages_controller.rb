class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @chatroom = Chatroom.new
    if signed_in? && current_user.caviste?
      redirect_to caviste_offers_path
    end
  end
end
