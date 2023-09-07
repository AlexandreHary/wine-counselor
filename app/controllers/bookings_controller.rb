class BookingsController < ApplicationController
  def index
    @chatroom = Chatroom.find(params[:chatroom_id])
    @bookings = Booking.where(chatroom: @chatroom)
    # @offers = Offer.where(wine: booking.wine)
    # @offers.each do |offer|
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
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to chatroom_wines_path(@booking.chatroom)
  end
end
