class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @wine = Wine.last #transformer.last en params etc
  end

  def create
    @wine = Wine.find(params[:wine])
    @chatroom = Chatroom.find(params[:chatroom_id])
    @booking = Booking.new(wine: @wine, chatroom: @chatroom)
    if @booking.save
      redirect_to chatroom_wines_path, notice: "Selectionné avec succès !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end
end
